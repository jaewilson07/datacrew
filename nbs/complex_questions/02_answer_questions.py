"""
calculates the embeddings vector for the `text` question then retrieves the top N matches
will not calculate embedding for the same question twice (retrieves from history)
"""

import json
import re

import numpy as np
import tiktoken
import utils
from langchain.text_splitter import RecursiveCharacterTextSplitter


def similarity(v1, v2):
    """returns dot product of two vectors"""
    return np.dot(v1, v2)


def get_question_embedding(text):  # returns an embedding vector
    """retrieves question embedding from question store or retrieves embedding from gpt3"""

    search_scores = 'question_vectors.json'
    search_vectors = json.loads(utils.open_file(file_path=search_scores))

    match_text = next((search_vector for search_vector in search_vectors
                       if search_vector.get('question') == text), None)

    vector = None
    if match_text:
        vector = match_text.get('vector')

    else:
        vector = utils.get_gpt3_embedding(text)
        search_vectors.append({'question': text, 'vector': vector})
        utils.write_file(search_scores, content=search_vectors, method='w')

    return vector


def query_knowledge_store(search_vector,
                          knowledge_store: [dict],
                          count_docs=5  # maximum documents to match
                          ):

    scores = []
    for page in knowledge_store:
        score = similarity(search_vector, page.get('vector'))
        scores.append({**page, 'score': score})

    ordered = sorted(scores, key=lambda p: p.get('score'), reverse=True)

    return ordered[:count_docs]


def query_article_text(text, query):
    prompt = utils.open_file('prompt_answer.txt')
    prompt = prompt.replace('<<PASSAGE>>', text).replace('<<QUERY>>', query)

    answer = utils.gpt3_completion(prompt)
    print('\n\n', answer)

    return answer


tiktoken.encoding_for_model('gpt-3.5-turbo')

# recommended for use with text-embedding-ada-002
tokenizer = tiktoken.get_encoding('cl100k_base')


def tiktoken_len(text):
    tokens = tokenizer.encode(text, disallowed_special=())
    return len(tokens)


multidocument_text_splitter = RecursiveCharacterTextSplitter(
    chunk_size=1500,
    chunk_overlap=20,  # number of tokens overlap between chunks
    length_function=tiktoken_len,
    separators=['\n\n', '\n', ' ', '']
)
if __name__ == '__main__':
    data = utils.open_file(file_path='index.json')
    data = utils.json.loads(data)

    while True:
        query = input("Enter your question here: ")

        query_vector = get_question_embedding(query)

        matched_articles_chunks = query_knowledge_store(search_vector=query_vector,
                                                        knowledge_store=data,
                                                        count_docs=5)

        article_answers = [query_article_text(article_chunk.get(
            'content'), query) for article_chunk in matched_articles_chunks]

        article_answers = [re.sub(r'\n\s*\n', '\n\n', text)
                           for text in article_answers]

        article_answers_combined = "\n\n".join(article_answers)

        article_answers_chunks = multidocument_text_splitter.split_text(
            article_answers_combined)

        aggregate_answer = []
        for answer_chnk in article_answers_chunks:
            prompt = utils.open_file(
                'prompt_summary.txt').replace('<<SUMMARY>>', answer_chnk)

            print(prompt)
            # summary = utils.gpt3_completion(prompt)
            # aggregate_answer.append(summary)

        print('\n\n=========\n\n', '\n\n'.join(aggregate_answer))

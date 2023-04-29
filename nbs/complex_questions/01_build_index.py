import json
import re

import tiktoken
import utils
from langchain.text_splitter import RecursiveCharacterTextSplitter

TOKEN_CHUNK_SIZE = 2000
TEST_ARTICLE_LIMIT = 20  # or NONE

INLINE_LINK_RE = re.compile(r'\[([^\]]+)\]\(([^)]+)\)')
FOOTNOTE_LINK_TEXT_RE = re.compile(r'\[([^\]]+)\]\[(\d+)\]')
FOOTNOTE_LINK_URL_RE = re.compile(r'\[(\d+)\]:\s+(\S+)')


def process_article(text):
    try:
        text = text.split('---', 2)[2]

        return re.sub(INLINE_LINK_RE, '', text)

    except Exception as e:
        print(e)


tiktoken.encoding_for_model('gpt-3.5-turbo')

# recommended for use with text-embedding-ada-002
tokenizer = tiktoken.get_encoding('cl100k_base')


def tiktoken_len(text):
    tokens = tokenizer.encode(text, disallowed_special=())
    return len(tokens)


article_text_splitter = RecursiveCharacterTextSplitter(
    chunk_size=TOKEN_CHUNK_SIZE,
    chunk_overlap=20,  # number of tokens overlap between chunks
    length_function=tiktoken_len,
    separators=['\n\n', '\n', ' ', '']
)


if __name__ == '__main__':

    file_ls = utils.crawl_directory('../../raw_kb/article')

    all_text = [{'file_path': file_path,
                'content': utils.open_file(file_path)}
                for file_path in file_ls if file_path.endswith('index.qmd')]

    # subset for testing or set TEST_ARTICLE_LIMIT to NONE
    all_text = all_text[:TEST_ARTICLE_LIMIT]

    all_text_chunks = [{'file_path': text_obj.get('file_path'),
                        'content': chunk,
                        'chunk_id': index}
                       for text_obj in all_text
                       for index, chunk in enumerate(article_text_splitter.split_text(
                           process_article(text_obj.get('content')))) if text_obj.get('content')]

    result = []

    for chunk in all_text_chunks:
        text = chunk.get('content').encode(
            encoding='ASCII',
            errors='ignore'
        ).decode()

        embedding = utils.get_gpt3_embedding(text)

        chunk.update({'vector': embedding})
        print(chunk, '\n\n\n')

        result.append(chunk)

    utils.write_file('index.json', result)

# build_index()

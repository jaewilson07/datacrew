import datetime as dt
import json
import os
import re
import time

import openai


def open_file(file_path):
    if not os.path.exists(file_path):
        raise Exception(f"{file_path} - does not exist")

    with open(file_path, 'r', encoding='utf-8') as f:
        return f.read()


def write_file(file_path, content, method='w'):
    with open(file_path, method, encoding='utf-8') as f:
        json.dump(content, f, indent=2)


def write_text(file_path, content, method='w'):
    with open(file_path, method, encoding='utf-8') as f:
        f.write(content)


def crawl_directory(directory_path):

    if not os.path.exists(directory_path):
        raise Exception(f"{directory_path} does not exist")

    file_ls = list()
    for root, dirs, files in os.walk(directory_path, topdown=False):
        [file_ls.append(os.path.join(root, name)) for name in files]

    return file_ls


def get_gpt3_embedding(content, engine="text-embedding-ada-002"):
    openai.api_key = os.environ['OPENAPI_SECRET_KEY']

    print('accessing chatgpt')
    response = openai.Embedding.create(input=[content.replace("\n", " ")],
                                       model=engine
                                       )
    vector = response['data'][0]['embedding']
    return vector


def gpt3_completion(prompt,
                    engine='text-davinci-003',
                    temp=0,
                    top_p=1.0,
                    tokens=1000,
                    freq_pen=0.25,
                    pres_pen=0.0,
                    stop=['<<END>>']):

    openai.api_key = os.environ['OPENAPI_SECRET_KEY']

    max_retry = 5
    retry = 1
    prompt = prompt.encode(encoding='ASCII', errors='ignore').decode()

    while retry <= max_retry:
        try:
            if retry == 1:
                print('accessing chatgpt')
            else:
                print(f'accessing chat gpt - attempt{retry}/{max_retry}')

            response = openai.Completion.create(
                engine=engine,
                prompt=prompt,
                temperature=temp,
                max_tokens=tokens,
                top_p=top_p,
                frequency_penalty=freq_pen,
                presence_penalty=pres_pen,
                stop=stop)

            text = response.get('choices')[0].get('text').strip()
            text = re.sub('\s+', ' ', text)

            filename = f"{dt.datetime.now().strftime('%Y-%m-%d %H%M')}_gpt3.txt"

            write_text(
                f"gpt3_logs/{filename}", content=f"PROMPT:\n\n{prompt} '\n\n============\n\n RESPONSE:\n\n{text}")

            return text

        except Exception as e:
            print(f"GPT3 error {e}")

        finally:
            retry += 1
            if retry >= max_retry:
                raise Exception(
                    f"💀 GPT3 error {retry}/{max_retry} attempts made")

            time.sleep(2)

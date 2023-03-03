# AUTOGENERATED! DO NOT EDIT! File to edit: ../../nbs/crawler/article.ipynb.

# %% auto 0
__all__ = ['Article', 'ArticleKB_GetSoupError', 'ArticleKB_ProcessSoupError', 'Article_KB', 'Article_Category']

# %% ../../nbs/crawler/article.ipynb 2
import os

import datetime as dt
from dataclasses import dataclass, field
import urllib.parse as url_parse

from bs4 import BeautifulSoup
import selenium.webdriver
from selenium.webdriver.common.by import By


import markdownify as md
from dateutil import parser


import datacrew.crawler.crawler as dcc


# %% ../../nbs/crawler/article.ipynb 3
@dataclass
class Article:
    url: str
    base_url: str

    url_entity_prefix: str = None
    url_id: str = None

    driver: selenium.webdriver = field(repr=False, default=None)
    soup: BeautifulSoup = field(repr=False, default=None)

    is_success: bool = False

    url_ls: list[str] = field(default_factory=list)
    image_ls: list[str] = field(default_factory=list)

    def __post_init__(self):
        self.get_urls()

    @classmethod
    def get_from_url(cls, url: str,
                     driver: selenium.webdriver,
                     base_url: str,
                     url_entity_prefix: str = None,
                     element_type=By.CLASS_NAME,
                     element_id="slds-form-element"):

        soup = dcc.pagesource(
            driver=driver, url=url, element_type=element_type, element_id=element_id, )

        return cls(
            url=url,
            url_entity_prefix=url_entity_prefix,
            base_url=base_url,
            soup=soup,
        )

    @staticmethod
    def md_soup(soup, **options):
        return md.MarkdownConverter(**options).convert_soup(soup)

    def get_urls(self, is_remove_query_string_parameters: bool = True):
        self.url_ls = []
        for soup_link in self.soup.find_all("a"):
            url = soup_link.get("href")

            if not url:
                continue

            if url.startswith("/"):
                url = url_parse.urljoin(self.base_url, url)

            if is_remove_query_string_parameters:
                url = url_parse.urljoin(url, url_parse.urlparse(url).path)

            if url.startswith(self.base_url) and url not in self.url_ls:
                self.url_ls.append(url)

        return self.url_ls

    def get_images(self,
                   soup=None, # pass a soup to just exctract images from the selected content.  Default will exctract all images on the page
                   test_base_url: str = None, # pass to limit URLs to a specific base
                   debug_prn: bool = False):
        
        "extract image urls from soup"

        soup = soup or self.soup

        self.image_ls = [{
            "url": f"{self.base_url if item.get('src').startswith('/') else ''}{item.get('src')}",
            "relative_url": item.get('src'),
            "name": item.get('alt')} for item in soup.find_all('img')]
        

        if test_base_url:
            self.image_ls = [img for img in self.image_ls if img.get(
                'url').startswith(test_base_url)]

        if debug_prn:
            print(self.image_ls)
        return self.image_ls


# %% ../../nbs/crawler/article.ipynb 4
class ArticleKB_GetSoupError(Exception):
    def __init__(self, url):
        super().__init__(f"failed to retrieve soup for {url}")


class ArticleKB_ProcessSoupError(Exception):
    def __init__(self, url, search_term):
        super().__init__(f"search term {search_term} does not exist in {url}")


@dataclass(init=False)
class Article_KB(Article):
    title: str = None
    md_str: str = field(default=None, repr=False)
    views: int = None
    created: dt.date = None
    last_updated: dt.date = None

    def __init__(self, url, base_url, driver, url_entity_prefix='/s/article/', debug_prn:bool = False):
        self.url = url
        self.base_url = base_url
        self.driver = driver

        soup = dcc.pagesource(driver=self.driver, url=self.url,
                              element_type=By.CLASS_NAME, element_id="slds-form-element")

        if not soup:
            raise ArticleKB_GetSoupError(url=self.url)
        
        super().__init__(url = url, base_url=base_url, soup=soup, url_entity_prefix=url_entity_prefix)

        self.url_id = self.url.split('/')[-1]


        try:
            self.process_soup(soup, debug_prn = debug_prn)
            self.is_success = True

        except ArticleKB_ProcessSoupError as e:
            print(e)

    def process_soup(self, soup: BeautifulSoup, debug_prn :bool = False):
        search_term = "slds-form-element"

        table = soup.find_all(class_=[search_term])

        if not table or table == []:
            raise ArticleKB_ProcessSoupError(
                url=self.url, search_term=search_term)

        tarticle = []
        for row in table:
            # print("❤️")

            cells = row.find(class_="slds-form-element__label")

            if list(cells.strings):
                content = row.find(class_="slds-form-element__control")
                tarticle.append((list(cells.strings)[0], content))

        kb_soup = dict(tarticle)
        
        self.title = self.md_soup(kb_soup.get("Title"))
        self.md_str = self.md_soup(kb_soup.get("Article Body"))
        self.article_id = self.md_soup(kb_soup.get("Article Number"))
        self.views = self.md_soup( kb_soup.get("Article Total View Count"))
        self.created = parser.parse( self.md_soup(kb_soup.get("Article Created Date"))
        )

        self.last_updated = parser.parse(
            self.md_soup(kb_soup.get("First Published Date"))
        )

        # self.get_images(
        #     test_base_url='https://domo-support.domo.com/servlet/rtaImage', debug_prn = debug_prn)

        return kb_soup

# %% ../../nbs/crawler/article.ipynb 5
@dataclass(init=False)
class Article_Category(Article):
    url: str
    base_url: str
    driver: selenium.webdriver = field(repr=False)

    is_success: bool = False
    article: Article = field(default=None, repr=False)

    category: str = None
    category_id: str = None
    category_description: str = None

    child_category_ls: list[dict] = None

    def __init__(self, url, base_url, driver, url_entity_prefix = 's/topic/'):
        self.url = url
        self.base_url = base_url

        self.driver = driver

        soup = dcc.pagesource(driver=self.driver, url=self.url,
                              element_type=By.CLASS_NAME, element_id="section-list-item")

        if not soup:
            raise dcc.ArticleKB_GetSoupError(url=self.url)

        super().__init__(base_url=base_url, soup=soup, url_entity_prefix=url_entity_prefix)

        # self.article = Article(soup=soup, base_url=self.base_url)

        self.set_category_id()


        try:
            self.process_kb_soup(soup)
            self.is_success = True

        except ArticleKB_ProcessSoupError as e:
            print(e)

    def set_category_id(self):
        url_str = self.url.replace(self.base_url, '')
        url_str = url_str.split('/')[-2]
        self.category_id = url_str
        return url_str

    def process_kb_soup(self, soup: BeautifulSoup):

        # process parent attributes
        parent_term = "page-header"
        parent = soup.find(class_=[parent_term])
        self.category = parent.find("h1").get_text()

        self.category_description = parent.find(
            "p") and parent.find("p").get_text()

        table_item_term = "section-list-item"

        table = soup.find_all(class_=[table_item_term])

        if not table or table == []:
            raise ArticleKB_ProcessSoupError(
                url=self.url, search_term=table_item_term)

        tarticle = []
        for row in table:
            url = row.find("a").get("href")
            if not url.startswith('/s/topic/'):
                continue

            child_id = url.split('/')[-1]

            tarticle.append({'category': row.get_text(),
                             'id':  child_id,
                             'url': f"{self.base_url}{id}"}
                            )

        self.child_category_ls = tarticle


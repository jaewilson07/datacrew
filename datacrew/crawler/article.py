# AUTOGENERATED! DO NOT EDIT! File to edit: ../../nbs/crawler/article.ipynb.

# %% auto 0
__all__ = ['Article', 'detect_encoding', 'ArticleKB_GetSoupError', 'ArticleKB_ProcessSoupError', 'Article_KB', 'Article_Category',
           'Article_KB_Home']

# %% ../../nbs/crawler/article.ipynb 3
import datetime as dt
from dataclasses import dataclass, field
import urllib.parse as url_parse

from bs4 import BeautifulSoup
import chardet

import selenium.webdriver
from selenium.webdriver.common.by import By

# from fastcore.basics import patch_to

import markdownify as md
from dateutil import parser


import datacrew.crawler.crawler as dcc

# %% ../../nbs/crawler/article.ipynb 4
class CustomConverter(md.MarkdownConverter):
    def convert_ul(self, el, text, convert_as_inline):
        res = '\n'
        classList = el.get("class")

        if classList and ("article-list" in classList or "section-list" in classList):
            res = '\n***\n'

        res = res + super().convert_list(el, text, convert_as_inline)
        return res

    def convert_div(self, el, text, convert_as_inline):
        classList = el.get("class")
        
        if classList and "mt-video-widget" in classList:
            # print(el)
            # custom transformation
            # unwrap child nodes of <a class="searched_found">
            text = ""
            for child in el.children:
                # print(child.get('src'))
                text += child.get('src')
            text = f'{"{{< video"} {text}{" >}}"}'
            print(text)
            return text

        # default transformation
        return super().convert_a(el, text, convert_as_inline)


# %% ../../nbs/crawler/article.ipynb 6
@dataclass
class Article:
    url: str = None
    base_url: str = None
    entity_base_url: str = None

    url_entity_prefix: str = None
    url_id: str = None

    driver: selenium.webdriver = field(repr=False, default=None)
    soup: BeautifulSoup = field(repr=False, default=None)
    article_soup: BeautifulSoup = field(repr=False, default=None)

    is_success: bool = False

    url_ls: list[str] = None
    image_ls: list[str] = None

    child_category_ls: list[dict] = None
    child_article_ls: list[dict] = None

    def __post_init__(self):
        self.child_category_ls = self.child_category_ls or []
        self.child_article_ls = self.child_article_ls or []
        self.url_ls = self.url_ls or []
        self.image_ls = self.image_ls or []

        if self.url_entity_prefix and self.url_entity_prefix[0] != "/":
            self.url_entity_prefix = f"/{self.url_entity_prefix}"

        if self.url_entity_prefix and self.url_entity_prefix in self.base_url:
            self.base_url = self.base_url.replace(self.url_entity_prefix, "")

        self.entity_base_url = url_parse.urljoin(
            self.base_url, self.url_entity_prefix or '')

        self.set_id()

        self.get_urls()

    def __eq__(self, other):
        return (self.url_id == other.url_id) or (self.url == other.url)

    @staticmethod
    def md_soup(soup, **options):
        """conerts soup to markdown text"""

        return CustomConverter(**options).convert_soup(soup)

    def add_child_category_to_ls(self, child):

        if child not in self.child_category_ls:
            self.child_category_ls.append(child)

        return self.child_category_ls

    def add_child_article_to_ls(self, url):
        if url not in self.child_article_ls:
            self.child_article_ls.append(url)

        return self.child_article_ls

    def add_url_to_ls(self, url, is_remove_query_string_parameters: bool = True, debug_prn: bool = False):

        _old_url_ls = self.url_ls

        if url.startswith("/") and self.url_entity_prefix in url:
            url = url_parse.urljoin(self.base_url, url)

        if is_remove_query_string_parameters:
            url = url_parse.urljoin(url, url_parse.urlparse(url).path)

        if not url.startswith(self.base_url):
            if debug_prn:
                print(f"not adding {url}")
            return self.url_ls

        if url.endswith("/"):
            url = url[:-1]

        if url.split("/")[-4] == "s":
            url = "/".join(url.split("/")[:-1])

        if url not in self.url_ls:
            if debug_prn:
                print(f"{_old_url_ls} adding {url} to {self.url} list")
            self.url_ls.append(url)

        return self.url_ls

    def get_urls(self, soup=None):
        soup = soup or self.soup
        if not soup:
            return

        self.url_ls = []

        for soup_link in soup.find_all("a"):
            url = soup_link.get("href")

            if not url:
                continue

            self.add_url_to_ls(url)
        return self.url_ls

    def set_id(self):
        o = self.url.replace(self.entity_base_url, "")
        self.url_id = o.split("/")[0]
        self.url = url_parse.urljoin(self.entity_base_url, self.url_id)
        return self.url_id

    def get_images(
        self,
        soup=None,  # pass a soup to just exctract images from the selected content.  Default will exctract all images on the page
        test_base_url: str = None,  # pass to limit URLs to a specific base
        debug_prn: bool = False,
    ):
        "extract image urls from soup"

        soup = soup or self.soup

        self.image_ls = [
            {
                "url": f"{self.base_url if item.get('src').startswith('/') else ''}{item.get('src')}",
                "relative_url": item.get("src"),
                "name": item.get("alt"),
            }
            for item in soup.find_all("img")
            if item.get("src", False)
        ]

        if test_base_url:
            self.image_ls = [
                img for img in self.image_ls if img.get("url").startswith(test_base_url)
            ]

        if debug_prn:
            print(self.image_ls)
        return self.image_ls

@staticmethod
def detect_encoding(file_path, debug_prn: bool = False):
    detector = chardet.universaldetector.UniversalDetector()
    with open(file_path, "rb") as f:
        for line in f:
            detector.feed(line)
            if detector.done:
                break
    detector.close()

    encoding = detector.result

    if debug_prn:
        print(encoding)

    with open(file_path, encoding=encoding['encoding']) as f:
        try:
            return f.read()
        except Exception as e:
            return e
        finally:
            f.close()


# %% ../../nbs/crawler/article.ipynb 10
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
    article_id: str = None

    def __init__(
        self,
        base_url,
        url = None,
        path_html: str= None,
        driver = None,
        child_category_ls=None,
        child_article_ls=None,
        url_entity_prefix="/s/article/",
        debug_prn: bool = False,
    ):
        self.url = url
        self.base_url = base_url
        self.path_html = path_html

        soup = None

        if path_html:
            page_decoded = self.detect_encoding(path_html, debug_prn = debug_prn)

            soup = BeautifulSoup(page_decoded, features="lxml")
        else: 
            soup = dcc.pagesource(
                driver=self.driver,
                url=self.url,
                element_type=By.CLASS_NAME,
                element_id="slds-form-element",
                is_return_soup=True,
            )

        super().__init__(
            url=url,
            base_url=base_url,
            soup=soup,
            url_entity_prefix=url_entity_prefix,
            driver=driver,
            child_category_ls=child_category_ls,
            child_article_ls=child_article_ls,

        )

        if not soup:
            raise ArticleKB_GetSoupError(url=self.url)

        self.article_soup = self.process_soup(soup, debug_prn=debug_prn)
        self.is_success = True

    def process_soup(self, soup: BeautifulSoup, debug_prn: bool = False):
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
        self.views = self.md_soup(kb_soup.get("Article Total View Count"))
        self.created = parser.parse(self.md_soup(
            kb_soup.get("Article Created Date")))

        self.last_updated = parser.parse(
            self.md_soup(kb_soup.get("First Published Date"))
        )

        self.get_images(
            test_base_url="https://domo-support.domo.com/servlet/rtaImage",
            debug_prn=debug_prn,
        )

        return kb_soup


# %% ../../nbs/crawler/article.ipynb 17
@dataclass(init=False)
class Article_Category(Article):
    top_parent = None
    parent = None

    path_html : str = None

    category: str = None
    category_description: str = None

    is_child_recursive: bool = True

    md_str: str = field(default=None, repr=False)


    def __init__(
        self,
        url,
        base_url,
        url_entity_prefix="s/topic/",
        path_html: str = None,
        driver=None,
        child_category_ls=None,
        child_article_ls=None,
        is_child_recursive: bool = False,
        debug_prn: bool = False,
        parent=None,
        top_parent=None
    ):
        self.parent = parent
        self.top_parent = top_parent
        self.path_html = path_html

        self.is_child_recursive = is_child_recursive

        soup = None

        if path_html:
            self.is_child_recursive = False
            page_decoded = self.detect_encoding(path_html, debug_prn = debug_prn)

            soup = BeautifulSoup(page_decoded, features="lxml")

        else:
            if not driver:
                driver = dcc.driversetup(is_headless=False)

            soup = dcc.pagesource(
                driver=driver,
                url=url,
                element_type=By.CLASS_NAME,
                element_ls=["section-list-item", "article-list-item"],
                is_return_soup=True,
            )

        if not soup:
            raise ArticleKB_GetSoupError(url=url)

        super().__init__(
            url=url,
            base_url=base_url,
            soup=soup,
            url_entity_prefix=url_entity_prefix,
            driver=driver,
            child_category_ls=child_category_ls,
            child_article_ls=child_article_ls,
        )

        self.article_soup = self.process_soup(soup, debug_prn=debug_prn)
        self.is_success = True

    def process_soup(self, soup: BeautifulSoup, debug_prn: bool = False):
        if self.is_child_recursive:
            self.top_parent = self.top_parent or self.parent or self
            self.parent = self.parent or self

        # process parent attributes

        article_soup = soup.find(class_=["cDomoKBCategoryNav"])

        category_soup = article_soup.find("h1")
        self.category = category_soup.get_text()

        category_description_soup = article_soup.find("p")
        self.category_description = (
            category_description_soup and category_description_soup.get_text()
        )

        table_item_term = ["section-list-item", "article-list-item"]
        table_soup = article_soup.find_all(class_=[table_item_term])

        if not table_soup or table_soup == []:
            raise ArticleKB_ProcessSoupError(
                url=self.url, search_term=table_item_term)

        # process children
        for row in table_soup:

            url = row.find("a").get("href")
            if url[0] == "/":
                url = url_parse.urljoin(self.base_url, url)

            child_id = url.split("/")[-1]

            print(f"❤️ child url - {url}, {child_id}")

            # update url recursively
            self.add_url_to_ls(url)
            self.parent and self.parent.add_url_to_ls(url)
            self.top_parent and self.top_parent.add_url_to_ls(url)

            if "/s/article/" in url:
                self.add_child_article_to_ls(url)
                self.parent and self.parent.add_child_article_to_ls(url)
                self.top_parent and self.top_parent.add_child_article_to_ls(
                    url)
                continue

            # if anything else
            if not self.url_entity_prefix in url:
                print(f'skipping {url}')
                continue

            # if category
            child_obj = None

            if self.is_child_recursive:

                child_obj = Article_Category(
                    url=url,
                    base_url=self.base_url,
                    url_entity_prefix=self.url_entity_prefix,
                    driver=self.driver,
                    child_article_ls=self.child_article_ls,
                    child_category_ls=self.child_category_ls,
                    top_parent=self.top_parent or None,
                    parent=self.parent or None,
                    is_child_recursive = self.is_child_recursive
                )
            
            elif not self.path_html:
                child_obj = Article_Category(
                url=url,
                base_url=self.base_url,
                url_entity_prefix=self.url_entity_prefix,
                driver=self.driver)

            if child_obj:
                self.add_child_category_to_ls(child_obj)
                self.parent and self.parent.add_child_category_to_ls(child_obj)
                self.top_parent and self.top_parent.add_child_category_to_ls(child_obj)
        
        self.md_str = self.md_soup(article_soup)

        return {
            "category": category_soup,
            "description": category_description_soup,
            "children": table_soup,
        }


# %% ../../nbs/crawler/article.ipynb 22
@dataclass(init=False)
class Article_KB_Home(Article):
    category: str = None
    category_description: str = None

    def __init__(
        self,
        url,
        base_url,
        url_entity_prefix="s/knowledge-base",
        path_html=None,
        debug_prn: bool = False,
        driver=None,
    ):
        soup = None

        if path_html:
            self.path_html = path_html
            self.is_child_recursive = False
            page_decoded = self.detect_encoding(path_html, debug_prn=debug_prn)

            soup = BeautifulSoup(page_decoded, features="lxml")

        else:
            if not driver:
                driver = dcc.driversetup(is_headless=False)

            soup = dcc.pagesource(
                driver=driver,
                url=url,
                element_type=By.CLASS_NAME,
                element_ls=["blocks-list"],
                is_return_soup=True,
            )

        if not soup:
            raise ArticleKB_GetSoupError(url=url)

        super().__init__(
            url=url,
            base_url=base_url,
            soup=soup,
            url_entity_prefix=url_entity_prefix,
            driver=driver,
        )

        self.article_soup = self.process_soup(soup, debug_prn=debug_prn)
        self.is_success = True

    def process_soup(self, soup: BeautifulSoup, debug_prn: bool = False):
        # process parent attributes

        article_soup = soup.find(class_=["cDomoKBCategoryNav"])

        category_soup = article_soup.find("h1")
        self.category = category_soup.get_text()

        category_description_soup = article_soup.find("p")
        self.category_description = (
            category_description_soup and category_description_soup.get_text()
        )

        table_item_term = ["blocks-item"]
        table_soup = article_soup.find_all(class_=[table_item_term])

        if not table_soup or table_soup == []:
            raise ArticleKB_ProcessSoupError(
                url=self.url, search_term=table_item_term)

        # process children
        for row in table_soup:
            url = row.find("a").get("href")
            if url[0] == "/":
                url = url_parse.urljoin(self.base_url, url)

            child_id = url.split("/")[-1]

            print(f"❤️ child url - {url}, {child_id}")

            self.add_url_to_ls(url)

        self.get_images(
            test_base_url="https://domo-support.domo.com/servlet/rtaImage",
            debug_prn=debug_prn,
        )

        self.md_str = self.md_soup(article_soup)

        return {
            "category": category_soup,
            "description": category_description_soup,
            "children": table_soup,
        }


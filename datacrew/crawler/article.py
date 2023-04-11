# AUTOGENERATED! DO NOT EDIT! File to edit: ../../nbs/crawler/article.ipynb.

# %% auto 0
__all__ = ['Article', 'ArticleKB_GetSoupError', 'ArticleKB_ProcessSoupError', 'Article_KB', 'Article_Category']

# %% ../../nbs/crawler/article.ipynb 3
import datetime as dt
import urllib.parse as url_parse
from dataclasses import dataclass, field

import markdownify as md
import selenium.webdriver
from bs4 import BeautifulSoup
from dateutil import parser
from selenium.webdriver.common.by import By

import datacrew.crawler.crawler as dcc

# from fastcore.basics import patch_to




# %% ../../nbs/crawler/article.ipynb 4
@dataclass
class Article:
    url: str
    base_url: str
    entity_base_url: str = None

    url_entity_prefix: str = None
    url_id: str = None

    driver: selenium.webdriver = field(repr=False, default=None)
    soup: BeautifulSoup = field(repr=False, default=None)
    article_soup: BeautifulSoup = field(repr=False, default=None)

    is_success: bool = False

    url_ls: list[str] = field(default_factory=list)
    image_ls: list[str] = field(default_factory=list)

    def __post_init__(self):
        if self.url_entity_prefix[0] != "/":
            self.url_entity_prefix = f"/{self.url_entity_prefix}"

        if self.url_entity_prefix and self.url_entity_prefix in self.base_url:
            self.base_url = self.base_url.replace(self.url_entity_prefix, "")

        self.entity_base_url = url_parse.urljoin(self.base_url, self.url_entity_prefix)

        self.set_id()

        self.get_urls()

    @classmethod
    def get_from_url(
        cls,
        url: str,
        driver: selenium.webdriver,
        base_url: str,
        url_entity_prefix: str = None,
        element_type=By.CLASS_NAME,
        element_id="slds-form-element",
    ):

        soup = dcc.pagesource(
            driver=driver,
            url=url,
            element_type=element_type,
            element_id=element_id,
        )

        return cls(
            url=url,
            url_entity_prefix=url_entity_prefix,
            base_url=base_url,
            soup=soup,
            driver=driver,
        )

    @staticmethod
    def md_soup(soup, **options):
        return md.MarkdownConverter(**options).convert_soup(soup)

    def add_url_to_ls(self, url, is_remove_query_string_parameters: bool = True):
        url = url.lower()

        if not self.url_ls:
            self.url_ls = []

        if url.startswith("/") and self.url_entity_prefix in url:
            url = url_parse.urljoin(self.base_url, url)

        if is_remove_query_string_parameters:
            url = url_parse.urljoin(url, url_parse.urlparse(url).path)

        if not url.startswith(self.base_url):
            return

        if url.endswith("/"):
            url = url[:-1]

        if url.split("/")[-4] == "s":
            url = "/".join(url.split("/")[:-1])

        if url not in self.url_ls:
            self.url_ls.append(url)

    def get_urls(self):
        for soup_link in self.soup.find_all("a"):
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

# %% ../../nbs/crawler/article.ipynb 5
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
        url,
        base_url,
        driver,
        url_entity_prefix="/s/article/",
        debug_prn: bool = False,
    ):
        self.url = url
        self.base_url = base_url

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
        )

        if not soup:
            raise ArticleKB_GetSoupError(url=self.url)

        self.article_soup = self.process_soup(soup, debug_prn=debug_prn)
        self.is_success = True


    def process_soup(self, soup: BeautifulSoup, debug_prn: bool = False):
        search_term = "slds-form-element"

        table = soup.find_all(class_=[search_term])

        if not table or table == []:
            raise ArticleKB_ProcessSoupError(url=self.url, search_term=search_term)

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
        self.created = parser.parse(self.md_soup(kb_soup.get("Article Created Date")))

        self.last_updated = parser.parse(
            self.md_soup(kb_soup.get("First Published Date"))
        )

        self.get_images(
            test_base_url="https://domo-support.domo.com/servlet/rtaImage",
            debug_prn=debug_prn,
        )

        return kb_soup

# %% ../../nbs/crawler/article.ipynb 9
@dataclass(init=False)
class Article_Category(Article):

    category: str = None
    category_description: str = None

    is_child_recursive: bool = True
    crawl_category_id_ls: [str] = field(default=None)

    child_category_ls: list[dict] = field(default_factory=[])
    child_article_ls: list[dict] = field(default_factory=[])

    def __init__(
        self,
        url,
        base_url,
        url_entity_prefix="s/topic/",
        crawl_category_id_ls=None,
        debug_prn: bool = False,
        driver=None,
        is_child_recursive: bool = False,
    ):

        self.child_article_ls = []
        self.child_category_ls = []
        self.crawl_category_id_ls = crawl_category_id_ls or []
        self.is_child_recursive = is_child_recursive

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

        table_item_term = ["section-list-item", "article-list-item"]
        table_soup = article_soup.find_all(class_=[table_item_term])

        if not table_soup or table_soup == []:
            raise ArticleKB_ProcessSoupError(url=self.url, search_term=table_item_term)

        # process children
        for row in table_soup:
            url = row.find("a").get("href")
            if url[0] == "/":
                url = url_parse.urljoin(self.base_url, url)

            child_id = url.split("/")[-1]

            print(f"❤️ child url - {url}, {child_id}")

            self.add_url_to_ls(url)

            # if article
            if "/s/article/" in url:
                self.child_article_ls.append(url)
                continue

            # if anything else
            if self.url_entity_prefix not in url:
                continue

            # if category
            if (
                self.url_entity_prefix in url
                and child_id not in self.crawl_category_id_ls
            ):
                self.crawl_category_id_ls.append(child_id)

                child_obj = {"category": row.get_text(), "id": child_id, "url": url}

                if self.is_child_recursive and self.url_entity_prefix in url:

                    child_obj.update(
                        {
                            "child_article": Article_Category(
                                url=url,
                                base_url=self.base_url,
                                crawl_category_id_ls=self.crawl_category_id_ls,
                                url_entity_prefix=self.url_entity_prefix,
                                driver=self.driver,
                            )
                        }
                    )

                self.child_category_ls.append(child_obj)

        return {
            "category": category_soup,
            "description": category_description_soup,
            "children": table_soup,
        }

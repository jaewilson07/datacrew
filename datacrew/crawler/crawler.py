# AUTOGENERATED! DO NOT EDIT! File to edit: ../../nbs/crawler/crawler.ipynb.

# %% auto 0
__all__ = ['driversetup', 'wait_and_return']

# %% ../../nbs/crawler/crawler.ipynb 2
from selenium import webdriver
from selenium.webdriver.common.by import By
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC

# from bs4 import BeautifulSoup
# import time


# %% ../../nbs/crawler/crawler.ipynb 3
def driversetup(is_headless: bool = True) -> webdriver:
    options = webdriver.ChromeOptions()
    # run Selenium in headless mode

    if is_headless:
        options.add_argument("--headless")

    options.add_argument("--no-sandbox")

    driver = webdriver.Chrome(options=options)

    return driver

# %% ../../nbs/crawler/crawler.ipynb 4
def wait_and_return(
    driver: webdriver,
    element_id: str,
    el_type=By.ID,
    min_sleep_time=15,
    return_soup: bool = False,
):
    """
    Wait for the element to be present and return it.
    """

    try:
        res = WebDriverWait(driver, timeout=15, poll_frequency=1).until(
            EC.presence_of_element_located((el_type, element_id)))

        if return_soup:
            return BeautifulSoup(res.get_attribute("innerHTML"))
        return res

    except Exception as e:
        print(e)
        print(
            f"Timeout Exception: did not load within {min_sleep_time} seconds.")


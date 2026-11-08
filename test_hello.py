import os
import random

def test_hello_qa():
    assert "QA" in "Hello, QA!"


def test_config_is_provided():
    assert os.getenv("BASE_URL"), "BASE_URL не передан"
    assert os.getenv("TEST_PASSWORD"), "TEST_PASSWORD не передан"


def test_flaky_demo():
    assert random.random() > 0.5

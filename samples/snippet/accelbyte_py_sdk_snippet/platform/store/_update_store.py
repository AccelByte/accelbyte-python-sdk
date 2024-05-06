import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import update_store
from accelbyte_py_sdk.api.platform.models import ErrorEntity
from accelbyte_py_sdk.api.platform.models import StoreInfo
from accelbyte_py_sdk.api.platform.models import StoreUpdate
from accelbyte_py_sdk.api.platform.models import ValidationErrorEntity

"""
body:
Definition: StoreUpdate
default_language: str
default_region: str
description: str
supported_languages: List[str]
supported_regions: List[str]
title: str

Example: '{"defaultLanguage": "oG4nGt3QpqHWjf5h", "defaultRegion": "sMZjehtCoC0j9qTe", "description": "ueKXgaL28LzUbecg", "supportedLanguages": ["wrSAtuS6dDbsy76S", "z7CpOwLO44WOVpWN", "XrvN6Jvx4OymU1v7"], "supportedRegions": ["zNR4rYFmAH1BnuJ7", "W6SauzZ8MYXlMKOV", "hbg5qoQDctiBfmoX"], "title": "R43FcXMfq7DHpN3U"}'
"""

result, error = update_store(
    store_id=store_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

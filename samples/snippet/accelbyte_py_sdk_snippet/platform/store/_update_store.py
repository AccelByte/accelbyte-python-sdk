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

Example: '{"defaultLanguage": "BujY80BY88jfPvD1", "defaultRegion": "HXGGCQBBFfPmiX3C", "description": "9luN3wKZKbp6GrSP", "supportedLanguages": ["hooBRpWV0DqZVNBS", "89UmUiYCW7pYbVXj", "RP7aFlQQkXP8wTVj"], "supportedRegions": ["dKThZJQr9yZnhHLK", "uIKuvKP2laVpnvOh", "6YJNcAef2qK4dpri"], "title": "20ktSnKorkB98Jsf"}'
"""

result, error = update_store(
    store_id=store_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

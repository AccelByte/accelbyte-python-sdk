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

Example: '{"defaultLanguage": "2sxYJrtotIRhaVnX", "defaultRegion": "RWxmk6niAtYuy1Gc", "description": "PCzqEEdzZDVh4A6K", "supportedLanguages": ["mff60XnXqmcILIDV", "bKhZWTiuuiWSsabc", "6gZdTX8bzAsKF4z1"], "supportedRegions": ["Y2SyyF3wYmUxYORi", "p538JVvJhKBG5pB2", "n7uYMvZpEDDsL7gt"], "title": "WKNRLuAp7jTzkQvd"}'
"""

result, error = update_store(
    store_id=store_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

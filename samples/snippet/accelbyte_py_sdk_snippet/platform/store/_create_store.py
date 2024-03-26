import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import create_store
from accelbyte_py_sdk.api.platform.models import ErrorEntity
from accelbyte_py_sdk.api.platform.models import StoreCreate
from accelbyte_py_sdk.api.platform.models import StoreInfo
from accelbyte_py_sdk.api.platform.models import ValidationErrorEntity

"""
body:
Definition: StoreCreate
default_language: str
default_region: str
description: str
supported_languages: List[str]
supported_regions: List[str]
title: str

Example: '{"defaultLanguage": "6CwPMPVF09xtxvdr", "defaultRegion": "jYVmaTk2YUONZzFa", "description": "7n1hRyDo8vU7yfse", "supportedLanguages": ["vnodI8p71ySprKfo", "BgeG6HxezFMwAWUS", "jYAdXZY7AukyyJO7"], "supportedRegions": ["Wxk81uRQTB9sZn2g", "uR0oG1XKC5GxdvIF", "sgJbc3Vj7z7XYwRA"], "title": "Xv4rfNxW4u7r0oOt"}'
"""

result, error = create_store(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

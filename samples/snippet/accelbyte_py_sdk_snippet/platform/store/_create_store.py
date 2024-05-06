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

Example: '{"defaultLanguage": "CXvoFgdcKpD2xn2F", "defaultRegion": "PlRRTvYRXFrvlQZb", "description": "p7XA81wMgSZqbmK8", "supportedLanguages": ["DIKSnmlmgqdCO4qe", "3uPK00LILGPWpsyK", "YRXtukRqcF17COsE"], "supportedRegions": ["Hl5udG1rV7f7ftBO", "P9fDwxTmW2wPN4tP", "z0Tvme4KckWyQd2U"], "title": "UNZ1fKCLgkeQoS0X"}'
"""

result, error = create_store(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

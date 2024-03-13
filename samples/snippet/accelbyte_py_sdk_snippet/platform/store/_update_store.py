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

Example: '{"defaultLanguage": "MWhLAkpYeu1Ws4QF", "defaultRegion": "VLwPBxIEhzfZjzAo", "description": "3A1JSgZQb9R4jz36", "supportedLanguages": ["hcf71lLbAVLlG10X", "BJ1P7N1A9c1HdMyV", "zBRAuVvaYnHMR4Hf"], "supportedRegions": ["pnkCgICJ6HjC5B6O", "hZSJBMRvmFuDw8mC", "88HJH0TAt3c872cR"], "title": "HGa23ww903a7aGYM"}'
"""

result, error = update_store(
    store_id=store_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

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

Example: '{"defaultLanguage": "8Vc7ncwpahHBiCyT", "defaultRegion": "5jzYf2FraErGD0R0", "description": "HIU8jRJCRj2bQ41s", "supportedLanguages": ["e39ZvQAuqOkNN0kx", "GXITcSYWrRUkikdW", "8UYDxFGTK4zzqVfK"], "supportedRegions": ["L9gqUweMLiO0wodR", "0ERsotssbmsL8KX0", "TwxI3tekhy0qZzeO"], "title": "S9PsNdackUP963OT"}'
"""

result, error = create_store(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

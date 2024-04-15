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

Example: '{"defaultLanguage": "R6Tz9RxhNuYgAhga", "defaultRegion": "uKpwdvbmlYhK344h", "description": "kLzdOUkDoD3S0n9s", "supportedLanguages": ["LHGb0Aa1IcOVr7ou", "x7MtgMnA3DB8a5xE", "MFJv8C5pgK1A7ORj"], "supportedRegions": ["09ZHIxXajpgxnIoB", "evNEKco43rNC9Pac", "K05kdIuLpnJ0fR8N"], "title": "bsI5y9KodQgnYs8V"}'
"""

result, error = create_store(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

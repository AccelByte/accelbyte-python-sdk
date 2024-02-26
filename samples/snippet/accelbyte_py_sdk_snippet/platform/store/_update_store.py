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

Example: '{"defaultLanguage": "s5JIMHVL5F9VlZaM", "defaultRegion": "HjYZLx0w7euAUb47", "description": "iLJeiW07lN3J4ZDC", "supportedLanguages": ["fcNWM46IWis8nEQc", "0aoLGdR7ZSaRQhg0", "TbCR3IOfxZpwqWav"], "supportedRegions": ["nipADAeLiasehaFH", "GAANkk7y5jw5lK6I", "dsBdB05jvHIc3n5b"], "title": "CB9TF2Zvqkkn09aF"}'
"""

result, error = update_store(
    store_id=store_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

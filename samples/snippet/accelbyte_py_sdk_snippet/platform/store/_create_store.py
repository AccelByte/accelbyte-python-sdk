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

Example: '{"defaultLanguage": "jZmx57Zut2GDYXaO", "defaultRegion": "PQFK4xBtKF9RPv1V", "description": "arz4tVLv7aMbiXq5", "supportedLanguages": ["5AvHrLqnIwmaOaB7", "zHoTxXSIx0MRPEuX", "Lcwhdt5d13E9BcCF"], "supportedRegions": ["9K5OPaLkZbdmqeJa", "CMzRhZGL3lv7NLCI", "bxKc5tPvpLZoQKlO"], "title": "Ig5DRFXEbMfBOBOg"}'
"""

result, error = create_store(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

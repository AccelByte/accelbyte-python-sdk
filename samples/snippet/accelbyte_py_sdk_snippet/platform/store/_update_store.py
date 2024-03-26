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

Example: '{"defaultLanguage": "YGzA5iCMgAqmg5FK", "defaultRegion": "7VvvmiOGnZMGKUK0", "description": "z7z7bS2SZhZd46Am", "supportedLanguages": ["b8dtvONIVSk2kX2B", "kyL5he0xvizjtTtg", "GQSt2tHY7p77uUrC"], "supportedRegions": ["lmoVsocdXFdbugOJ", "7svfKyCO91Ai2kA5", "kXDIc2UGEKYwvCAT"], "title": "r9qtlbA1WamC0g5O"}'
"""

result, error = update_store(
    store_id=store_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

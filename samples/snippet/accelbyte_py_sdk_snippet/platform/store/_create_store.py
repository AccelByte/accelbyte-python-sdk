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

Example: '{"defaultLanguage": "rW5GXXmp156GZpNv", "defaultRegion": "0bZYoygMumu71fVz", "description": "J6SF1ciqc2ADr6th", "supportedLanguages": ["suSMlHCWvj8e5FeH", "0Wvf8dPRAlueTnO0", "ahx0B0uLxbV3dCLO"], "supportedRegions": ["kqwyoxdGEYNq6DJk", "3D8LscMTVbKjXkwg", "kesv2Ff8yQklkYkP"], "title": "qI9KzzTdBeWAzG7t"}'
"""

result, error = create_store(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import create_key_group
from accelbyte_py_sdk.api.platform.models import ErrorEntity
from accelbyte_py_sdk.api.platform.models import KeyGroupCreate
from accelbyte_py_sdk.api.platform.models import KeyGroupInfo
from accelbyte_py_sdk.api.platform.models import ValidationErrorEntity

"""
body:
Definition: KeyGroupCreate
description: str
name: str
status: str
tags: List[str]

Example: '{"description": "ac5FBK3dNKvZyZkm", "name": "uRoIsa9DLN2pcpqP", "status": "INACTIVE", "tags": ["VPkVpewAY5S6U4Sc", "6WOzMwEDvgAqbx8f", "FwKuqwhGEXGD8JyM"]}'
"""

result, error = create_key_group(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

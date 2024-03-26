import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import update_key_group
from accelbyte_py_sdk.api.platform.models import ErrorEntity
from accelbyte_py_sdk.api.platform.models import KeyGroupInfo
from accelbyte_py_sdk.api.platform.models import KeyGroupUpdate
from accelbyte_py_sdk.api.platform.models import ValidationErrorEntity

"""
body:
Definition: KeyGroupUpdate
description: str
name: str
status: str
tags: List[str]

Example: '{"description": "laIMH10WRjSnGLbN", "name": "9WryUQ52w4ToZ5Cb", "status": "ACTIVE", "tags": ["BdH7x7CIblQfxTts", "dsijxTa0BoOKbaCx", "q5vQwDmtunFh3zCn"]}'
"""

result, error = update_key_group(
    key_group_id=key_group_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

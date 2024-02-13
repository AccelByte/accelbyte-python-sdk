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

Example: '{"description": "mCgJj9mZAl84H7tf", "name": "hfC7oynlwOMSqyIV", "status": "ACTIVE", "tags": ["koPZuDPg7ogmrjFG", "U6wINhmRQOZJ204E", "075pcENIuf1l0KyO"]}'
"""

result, error = create_key_group(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

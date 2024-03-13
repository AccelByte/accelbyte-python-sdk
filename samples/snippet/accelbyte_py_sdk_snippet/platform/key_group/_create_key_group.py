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

Example: '{"description": "jcopS5kYgGuigbN1", "name": "jzG1ydA4vidOCMzF", "status": "INACTIVE", "tags": ["7Q3Dp0vGVXvneB7Q", "7VDt8CZK0ERni744", "EtpAxNDnOJfVrd4G"]}'
"""

result, error = create_key_group(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

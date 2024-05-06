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

Example: '{"description": "MChWdPsvKDSnHLAk", "name": "bjo5uvqmCXCCITXh", "status": "ACTIVE", "tags": ["5XKclKqoLHqbLAl2", "40W62FZmrsxewmm5", "TKgTUcGopmqXA3tf"]}'
"""

result, error = update_key_group(
    key_group_id=key_group_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

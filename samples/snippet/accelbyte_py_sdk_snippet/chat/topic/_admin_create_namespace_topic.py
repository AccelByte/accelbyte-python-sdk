import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.chat import admin_create_namespace_topic
from accelbyte_py_sdk.api.chat.models import ApiCreateNamespaceTopicParams
from accelbyte_py_sdk.api.chat.models import ApiCreateTopicResponse

"""
body:
Definition: ApiCreateNamespaceTopicParams
description: str
name: str

Example: '{"description": "TmuAMg4TyprFAdlU", "name": "L3f1n2yUyHDuh5ff"}'
"""

result, error = admin_create_namespace_topic(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

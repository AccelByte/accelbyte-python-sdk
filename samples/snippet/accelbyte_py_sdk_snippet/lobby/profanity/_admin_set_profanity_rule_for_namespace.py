import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.lobby import admin_set_profanity_rule_for_namespace
from accelbyte_py_sdk.api.lobby.models import (
    ModelsAdminSetProfanityRuleForNamespaceRequest,
)
from accelbyte_py_sdk.api.lobby.models import RestapiErrorResponseBody

"""
body:
Definition: ModelsAdminSetProfanityRuleForNamespaceRequest
rule: str

Example: '{"rule": "9Jl5ACG6SQVUbhlv"}'
"""

result, error = admin_set_profanity_rule_for_namespace(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

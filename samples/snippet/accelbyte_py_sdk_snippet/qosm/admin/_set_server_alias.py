import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.qosm import set_server_alias
from accelbyte_py_sdk.api.qosm.models import ModelsSetAliasRequest
from accelbyte_py_sdk.api.qosm.models import ResponseError

"""
body:
Definition: ModelsSetAliasRequest
alias: str

Example: '{"alias": "eR5MieV8kdozSI78"}'
"""

result, error = set_server_alias(
    body=body,
    region=region,
    x_additional_headers=x_additional_headers,
)

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

Example: '{"alias": "spRK3NuoJ9OFW3sO"}'
"""

result, error = set_server_alias(
    body=body,
    region=region,
    x_additional_headers=x_additional_headers,
)

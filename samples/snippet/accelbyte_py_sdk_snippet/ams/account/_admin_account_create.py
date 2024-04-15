import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.ams import admin_account_create
from accelbyte_py_sdk.api.ams.models import ApiAccountCreateRequest
from accelbyte_py_sdk.api.ams.models import ApiAccountCreateResponse
from accelbyte_py_sdk.api.ams.models import ResponseErrorResponse

"""
body:
Definition: ApiAccountCreateRequest
name: str

Example: '{"name": "ieAsDENvp9iPhI3w"}'
"""

result, error = admin_account_create(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

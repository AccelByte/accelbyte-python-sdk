import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.ams import admin_account_link_token_post
from accelbyte_py_sdk.api.ams.models import ApiAccountLinkRequest
from accelbyte_py_sdk.api.ams.models import ApiAccountLinkResponse
from accelbyte_py_sdk.api.ams.models import ResponseErrorResponse

"""
body:
Definition: ApiAccountLinkRequest
token: str

Example: '{"token": "zJelwbrp3tqEbiQJ"}'
"""

result, error = admin_account_link_token_post(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

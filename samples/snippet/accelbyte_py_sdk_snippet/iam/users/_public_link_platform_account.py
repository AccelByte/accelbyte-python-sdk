import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import public_link_platform_account
from accelbyte_py_sdk.api.iam.models import ModelLinkPlatformAccountRequest
from accelbyte_py_sdk.api.iam.models import RestErrorResponse

"""
body:
Definition: ModelLinkPlatformAccountRequest
platform_id: str
platform_user_id: str

Example: '{"platformId": "IANsNqDaonzIETIc", "platformUserId": "UkWto6CFsLcc0WpF"}'
"""

result, error = public_link_platform_account(
    body=body,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

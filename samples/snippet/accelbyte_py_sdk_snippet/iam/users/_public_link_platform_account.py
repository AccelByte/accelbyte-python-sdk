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

Example: '{"platformId": "JxcLuh3WRj1xuX1z", "platformUserId": "F2qDqoTU3Bj1T8qf"}'
"""

result, error = public_link_platform_account(
    body=body,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

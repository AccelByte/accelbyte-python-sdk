import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import public_get_users_platform_infos_v3
from accelbyte_py_sdk.api.iam.models import ModelUsersPlatformInfosRequestV3
from accelbyte_py_sdk.api.iam.models import ModelUsersPlatformInfosResponse
from accelbyte_py_sdk.api.iam.models import RestErrorResponse

"""
body:
Definition: ModelUsersPlatformInfosRequestV3
platform_id: str
user_ids: List[str]

Example: '{"platformId": "5ytGpAWeTFIB2rvB", "userIds": ["mWnYWECm8MLceG9H", "l3VOkMmW5kZFef12", "LykICCO3RBb5K4EY"]}'
"""

result, error = public_get_users_platform_infos_v3(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

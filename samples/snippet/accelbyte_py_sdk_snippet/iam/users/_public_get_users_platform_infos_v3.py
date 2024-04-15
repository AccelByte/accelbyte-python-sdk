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

Example: '{"platformId": "LgwpRLcOcwhg21ki", "userIds": ["ZIIDCYR43PmQDW1d", "lyhRp3jn825BHdDL", "XIHwnF6SZxjV3rhF"]}'
"""

result, error = public_get_users_platform_infos_v3(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

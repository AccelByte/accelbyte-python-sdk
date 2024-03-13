import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import public_list_user_id_by_platform_user_i_ds_v3
from accelbyte_py_sdk.api.iam.models import AccountcommonUserPlatforms
from accelbyte_py_sdk.api.iam.models import ModelPlatformUserIDRequest
from accelbyte_py_sdk.api.iam.models import RestErrorResponse

"""
body:
Definition: ModelPlatformUserIDRequest
platform_user_ids: List[str]

Example: '{"platformUserIds": ["OCc2kwKSmwDENM5M", "1cbmq4HTLjePPxwu", "ghPjv7V9NmLxdroM"]}'
"""

result, error = public_list_user_id_by_platform_user_i_ds_v3(
    body=body,
    platform_id=platform_id,
    raw_pid=raw_pid,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

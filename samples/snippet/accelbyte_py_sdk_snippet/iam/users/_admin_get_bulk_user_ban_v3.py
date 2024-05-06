import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import admin_get_bulk_user_ban_v3
from accelbyte_py_sdk.api.iam.models import ModelGetBulkUserBansRequest
from accelbyte_py_sdk.api.iam.models import ModelGetUserBanV3Response
from accelbyte_py_sdk.api.iam.models import RestErrorResponse

"""
body:
Definition: ModelGetBulkUserBansRequest
bulk_user_id: List[str]

Example: '{"bulkUserId": ["mx0Rmvee9yR5vihB", "4sOTIuulfqgflDIG", "nMI1nmK0Ge4GjDAH"]}'
"""

result, error = admin_get_bulk_user_ban_v3(
    body=body,
    active_only=active_only,
    ban_type=ban_type,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

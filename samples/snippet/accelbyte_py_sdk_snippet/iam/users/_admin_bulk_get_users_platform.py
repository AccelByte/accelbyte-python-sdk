import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import admin_bulk_get_users_platform
from accelbyte_py_sdk.api.iam.models import ModelListBulkUserPlatformsResponse
from accelbyte_py_sdk.api.iam.models import ModelUserIDsRequest
from accelbyte_py_sdk.api.iam.models import RestErrorResponse

"""
body:
Definition: ModelUserIDsRequest
user_ids: List[str]

Example: '{"userIds": ["UNSjXeaZBZ9CVkvA", "ULPDALmJ4EJMThWn", "qhukyi3ZAG30GTTY"]}'
"""

result, error = admin_bulk_get_users_platform(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

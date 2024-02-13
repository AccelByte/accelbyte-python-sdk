import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import public_bulk_get_users
from accelbyte_py_sdk.api.iam.models import ModelListBulkUserResponse
from accelbyte_py_sdk.api.iam.models import ModelUserIDsRequest
from accelbyte_py_sdk.api.iam.models import RestErrorResponse

"""
body:
Definition: ModelUserIDsRequest
user_ids: List[str]

Example: '{"userIds": ["vHh8MpJ1kliOzKXl", "oGHyZlpUz8e5jFba", "MBSoq0j8zNjy8UGc"]}'
"""

result, error = public_bulk_get_users(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import admin_bulk_update_user_account_type_v4
from accelbyte_py_sdk.api.iam.models import ModelBulkAccountTypeUpdateRequestV4
from accelbyte_py_sdk.api.iam.models import RestErrorResponse

"""
body:
Definition: ModelBulkAccountTypeUpdateRequestV4
test_account: bool
user_ids: List[str]

Example: '{"testAccount": false, "userIds": ["cGmnAh99sTJEdxzn", "ttEzkMXYdDan0hj9", "1VRlDgezBoVLd30B"]}'
"""

result, error = admin_bulk_update_user_account_type_v4(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

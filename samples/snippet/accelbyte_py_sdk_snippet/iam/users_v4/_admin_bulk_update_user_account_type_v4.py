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

Example: '{"testAccount": false, "userIds": ["Du5m0IqI7yfrigWp", "VkPHZJGIngnNja0M", "IVINXpKhuzd1GT7j"]}'
"""

result, error = admin_bulk_update_user_account_type_v4(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import admin_ban_user_bulk_v3
from accelbyte_py_sdk.api.iam.models import ModelBulkBanCreateRequestV3
from accelbyte_py_sdk.api.iam.models import ModelListBulkUserBanResponseV3
from accelbyte_py_sdk.api.iam.models import RestErrorResponse

"""
body:
Definition: ModelBulkBanCreateRequestV3
ban: str
comment: str
end_date: str
reason: str
skip_notif: bool
user_ids: List[str]

Example: '{"ban": "KUz3XN8iTY8ngXrr", "comment": "PFkuLpJtP8wUPH5j", "endDate": "JhPUqBa1QTPU0g1L", "reason": "5wZSrLMDUDtieEEh", "skipNotif": false, "userIds": ["JmbVB0CK4pEMfzZQ", "MwA0GVJAV45wsXSG", "nF2Bmjbf31MtaKXo"]}'
"""

result, error = admin_ban_user_bulk_v3(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

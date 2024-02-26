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

Example: '{"ban": "ykWHf1UZJihYbgy7", "comment": "H32vASy1bAJza9Gg", "endDate": "MAlwKYTf71U2736A", "reason": "lB8Iy5YsFx0RTuGg", "skipNotif": false, "userIds": ["veYGjUCbVWFx4fLY", "Tc7siUuV2UBzzaE0", "1zoq5DSTDtz4lN0w"]}'
"""

result, error = admin_ban_user_bulk_v3(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

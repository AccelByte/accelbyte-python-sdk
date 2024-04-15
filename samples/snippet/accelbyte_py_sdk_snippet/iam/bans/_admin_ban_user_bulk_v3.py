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

Example: '{"ban": "adosHczAS8062Odm", "comment": "9Fu0en8ut4wi2Z6Z", "endDate": "j8cisF5XyDtuDrJt", "reason": "fu1E3XbUxbhTd7XN", "skipNotif": true, "userIds": ["M9WE5CbT1OpY3AoW", "MfbbcKPKPx80MrbE", "DKuh84V5DVHCmAfW"]}'
"""

result, error = admin_ban_user_bulk_v3(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

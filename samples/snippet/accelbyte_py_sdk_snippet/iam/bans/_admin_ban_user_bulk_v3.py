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

Example: '{"ban": "TJBsI1zrP9dZAQwu", "comment": "QKLgz1tQYipzFNDi", "endDate": "WlaBa7tkcpbR3OLu", "reason": "ATNTrN7PsfU1dPnE", "skipNotif": false, "userIds": ["LIU4AYJDhy8c6GGU", "mF8s6ndtBY6OSFOM", "UGYJ4NWsLUBI1E4i"]}'
"""

result, error = admin_ban_user_bulk_v3(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

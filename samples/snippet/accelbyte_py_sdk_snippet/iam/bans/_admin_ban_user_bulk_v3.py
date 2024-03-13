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

Example: '{"ban": "VFvS05Z1Mj7A6ljt", "comment": "5U1Wh0PP4HsjWIH4", "endDate": "uxkLIPZeiAKymVeA", "reason": "K5dmLZVmA0TDgOEG", "skipNotif": true, "userIds": ["MegTpfg6OwrkacI8", "clwV644YS1c5E7gF", "FCmy9wuAUBfqsFya"]}'
"""

result, error = admin_ban_user_bulk_v3(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

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

Example: '{"ban": "PFUxO6vOOdMaWvHC", "comment": "5Bzn363ye8IzvRZR", "endDate": "tbTo70MDkLzybl8x", "reason": "zQGYpFgKI0yR0Fmt", "skipNotif": false, "userIds": ["a59dQbrorZiuYjVa", "9aOOtSD74mOZeDGz", "3vZWpdJaONA50aFJ"]}'
"""

result, error = admin_ban_user_bulk_v3(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

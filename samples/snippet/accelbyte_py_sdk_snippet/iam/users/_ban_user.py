import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import ban_user
from accelbyte_py_sdk.api.iam.models import ModelBanCreateRequest
from accelbyte_py_sdk.api.iam.models import ModelUserBanResponse
from accelbyte_py_sdk.api.iam.models import RestErrorResponse

"""
body:
Definition: ModelBanCreateRequest
ban: str
comment: str
end_date: str
reason: str
skip_notif: bool

Example: '{"ban": "3NBsQzjX24ZzU9ae", "comment": "jrxSXaBsPt2pHHdv", "endDate": "yOaDIk9Tg8F1gN5u", "reason": "6oHNKPyPCz1jTSIN", "skipNotif": false}'
"""

result, error = ban_user(
    body=body,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

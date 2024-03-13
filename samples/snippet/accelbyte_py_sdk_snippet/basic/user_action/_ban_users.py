import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.basic import ban_users
from accelbyte_py_sdk.api.basic.models import ErrorEntity
from accelbyte_py_sdk.api.basic.models import UserBanRequest
from accelbyte_py_sdk.api.basic.models import ValidationErrorEntity

"""
body:
Definition: UserBanRequest
action_id: int
comment: str
user_ids: List[str]

Example: '{"actionId": 3, "comment": "o5baMp9hmtccAMvG", "userIds": ["RaSh1cUzdDTCrfoc", "vK4wsyfUqmGw9QJw", "KBgfLEtDDPB2PSPt"]}'
"""

result, error = ban_users(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

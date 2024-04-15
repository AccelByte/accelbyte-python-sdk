import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.social import bulk_reset_user_stat_item_2
from accelbyte_py_sdk.api.social.models import BulkStatOperationResult
from accelbyte_py_sdk.api.social.models import BulkUserStatItemReset
from accelbyte_py_sdk.api.social.models import ErrorEntity
from accelbyte_py_sdk.api.social.models import ValidationErrorEntity

"""
body:
Definition: List[BulkUserStatItemReset]
stat_code: str
user_id: str

Example: '[{"statCode": "N2EQhz3lY2GG9NVZ", "userId": "h3TwdNzO6hmXvEtn"}, {"statCode": "5fSW2u5tgSqDEqs2", "userId": "YbVtFTN376pXq0dN"}, {"statCode": "2DRRhg7fS49eNyzo", "userId": "bkFpSSxo3QXEAtOE"}]'
"""

result, error = bulk_reset_user_stat_item_2(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

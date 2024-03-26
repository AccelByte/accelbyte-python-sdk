import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.social import public_bulk_inc_user_stat_item_value
from accelbyte_py_sdk.api.social.models import BulkStatOperationResult
from accelbyte_py_sdk.api.social.models import BulkUserStatItemInc
from accelbyte_py_sdk.api.social.models import ErrorEntity
from accelbyte_py_sdk.api.social.models import ValidationErrorEntity

"""
body:
Definition: List[BulkUserStatItemInc]
inc: float
stat_code: str
user_id: str

Example: '[{"inc": 0.551611656214849, "statCode": "NFOR9PrRbEYodPaW", "userId": "dfYfzZfGZz2eCuT2"}, {"inc": 0.6206158691285631, "statCode": "hOGIergy50BQJjIR", "userId": "GxVOZtRUydTyyV5V"}, {"inc": 0.5485062434147109, "statCode": "mnt8ymHhxL5x0VPc", "userId": "AuwvHGS7lBueSdmD"}]'
"""

result, error = public_bulk_inc_user_stat_item_value(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

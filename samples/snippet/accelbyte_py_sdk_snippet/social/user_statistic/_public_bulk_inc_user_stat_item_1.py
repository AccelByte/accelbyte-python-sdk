import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.social import public_bulk_inc_user_stat_item_1
from accelbyte_py_sdk.api.social.models import BulkStatItemInc
from accelbyte_py_sdk.api.social.models import BulkStatOperationResult
from accelbyte_py_sdk.api.social.models import ErrorEntity
from accelbyte_py_sdk.api.social.models import ValidationErrorEntity

"""
body:
Definition: List[BulkStatItemInc]
inc: float
stat_code: str

Example: '[{"inc": 0.4656082790903814, "statCode": "JpMP4zCicJ1P2SYn"}, {"inc": 0.8697593001799974, "statCode": "IGzKWXLCjfoVxT30"}, {"inc": 0.9481734300358712, "statCode": "pEITJERMmnDQMsLJ"}]'
"""

result, error = public_bulk_inc_user_stat_item_1(
    user_id=user_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

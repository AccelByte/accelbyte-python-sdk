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

Example: '[{"inc": 0.8997654961387638, "statCode": "FiPccyve6TjFB6TX", "userId": "7IrxpJqyJR2SATRf"}, {"inc": 0.16839047933754503, "statCode": "xdgiAGrC2FLXzPpY", "userId": "yHEpG3LjpcjUasSW"}, {"inc": 0.18037848253655264, "statCode": "LvdjpCFR8JbWQWP1", "userId": "Nye40hxRsCRJmY2m"}]'
"""

result, error = public_bulk_inc_user_stat_item_value(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

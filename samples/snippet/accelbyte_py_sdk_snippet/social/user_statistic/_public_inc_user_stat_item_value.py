import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.social import public_inc_user_stat_item_value
from accelbyte_py_sdk.api.social.models import ErrorEntity
from accelbyte_py_sdk.api.social.models import StatItemInc
from accelbyte_py_sdk.api.social.models import StatItemIncResult
from accelbyte_py_sdk.api.social.models import ValidationErrorEntity

"""
body:
Definition: StatItemInc
inc: float

Example: '{"inc": 0.32088506668863537}'
"""

result, error = public_inc_user_stat_item_value(
    stat_code=stat_code,
    user_id=user_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

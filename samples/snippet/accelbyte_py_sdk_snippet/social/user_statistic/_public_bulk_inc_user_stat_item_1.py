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

Example: '[{"inc": 0.6857479340362825, "statCode": "Fyx3H43T1IZlMzkJ"}, {"inc": 0.7309094802530332, "statCode": "RVkhBeOr0lB5UyJQ"}, {"inc": 0.6810828785712688, "statCode": "unxp6TBpqqefc7KC"}]'
"""

result, error = public_bulk_inc_user_stat_item_1(
    user_id=user_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

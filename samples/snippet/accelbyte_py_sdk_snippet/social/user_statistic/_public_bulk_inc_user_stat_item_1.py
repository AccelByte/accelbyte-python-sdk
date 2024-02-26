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

Example: '[{"inc": 0.4189946777969492, "statCode": "tUff3Mbego2jyQHv"}, {"inc": 0.035738923781472476, "statCode": "AYC8O0G0Hs6DYfU4"}, {"inc": 0.39080975952889285, "statCode": "D65A26z1L2Of9Cqc"}]'
"""

result, error = public_bulk_inc_user_stat_item_1(
    user_id=user_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

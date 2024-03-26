import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.social import bulk_inc_user_stat_item_value_1
from accelbyte_py_sdk.api.social.models import BulkStatItemInc
from accelbyte_py_sdk.api.social.models import BulkStatOperationResult
from accelbyte_py_sdk.api.social.models import ErrorEntity
from accelbyte_py_sdk.api.social.models import ValidationErrorEntity

"""
body:
Definition: List[BulkStatItemInc]
inc: float
stat_code: str

Example: '[{"inc": 0.6754493938562268, "statCode": "Nv66nABXvmjXLcyD"}, {"inc": 0.5497327186515628, "statCode": "G1ot5HpoPm5jPFRa"}, {"inc": 0.3190699598890864, "statCode": "M9TvNjbiGtVXrZYg"}]'
"""

result, error = bulk_inc_user_stat_item_value_1(
    user_id=user_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

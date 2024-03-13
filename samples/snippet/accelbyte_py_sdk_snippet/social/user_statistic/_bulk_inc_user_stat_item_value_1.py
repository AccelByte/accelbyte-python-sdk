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

Example: '[{"inc": 0.9244450304664759, "statCode": "Ot6qYDfHZCgWYLdv"}, {"inc": 0.32000601556698816, "statCode": "JhfncDOhTXbOpVD4"}, {"inc": 0.2145694520209881, "statCode": "WDCtZJJ9TCiUaHAo"}]'
"""

result, error = bulk_inc_user_stat_item_value_1(
    user_id=user_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

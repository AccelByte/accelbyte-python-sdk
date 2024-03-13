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

Example: '[{"inc": 0.344666995144853, "statCode": "lLf9zuyesrJob4es", "userId": "IoyxfoXvrSS3XKug"}, {"inc": 0.591352551044659, "statCode": "OVielEiYsBe0coZ6", "userId": "1rr7TvUe3EdiNEfi"}, {"inc": 0.7671609912398563, "statCode": "oyeWRDgD506HJiWh", "userId": "FwmciN5g18Ontp2O"}]'
"""

result, error = public_bulk_inc_user_stat_item_value(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

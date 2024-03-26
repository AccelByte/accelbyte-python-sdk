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

Example: '[{"inc": 0.9272790741247792, "statCode": "VXZMD4mVXpanRsF8"}, {"inc": 0.9388890616851253, "statCode": "vXbOTZ9e4tfhEtGi"}, {"inc": 0.9756997064635805, "statCode": "B8eCrRJ13rScwqGo"}]'
"""

result, error = public_bulk_inc_user_stat_item_1(
    user_id=user_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

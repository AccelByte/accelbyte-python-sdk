import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.social import bulk_inc_user_stat_item
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

Example: '[{"inc": 0.23728448507780686, "statCode": "BeFzwnyj4o05HX9z", "userId": "1ZA4vjs3udMK68se"}, {"inc": 0.15018610329731263, "statCode": "h27vFVhlpa1Ngbbp", "userId": "Y146XdqDN5QUuT3z"}, {"inc": 0.28514976914821144, "statCode": "Eilsm7MC27Rr2r1c", "userId": "HLleSnith8LLjkPK"}]'
"""

result, error = bulk_inc_user_stat_item(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

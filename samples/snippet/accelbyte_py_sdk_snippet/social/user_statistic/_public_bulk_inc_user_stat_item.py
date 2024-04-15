import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.social import public_bulk_inc_user_stat_item
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

Example: '[{"inc": 0.6223781708845865, "statCode": "VTOJhDWZeFnTZEp0", "userId": "cjy20WZFpb2FNQwA"}, {"inc": 0.16762204427872707, "statCode": "9sd89MoLri9s9T3V", "userId": "uxNLPCSQBZ2QXQin"}, {"inc": 0.5010596462569225, "statCode": "Eu1eGzai0ox91Byy", "userId": "No0L1sgR82N4Tu7D"}]'
"""

result, error = public_bulk_inc_user_stat_item(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

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

Example: '[{"inc": 0.7102395185007262, "statCode": "ZQb8awfh65cHEdTp", "userId": "6iCSh9q0KxyYP6t0"}, {"inc": 0.8233178996654807, "statCode": "NehVUPPpkDzcXUuh", "userId": "Rn5cgz9tGNHkv0RO"}, {"inc": 0.3805151897121791, "statCode": "Y7Hs6sFvCG0NU4Kc", "userId": "rcKWKImEVDdoA6Dr"}]'
"""

result, error = public_bulk_inc_user_stat_item(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

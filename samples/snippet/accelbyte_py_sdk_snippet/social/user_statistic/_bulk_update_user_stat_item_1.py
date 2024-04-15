import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.social import bulk_update_user_stat_item_1
from accelbyte_py_sdk.api.social.models import BulkStatOperationResult
from accelbyte_py_sdk.api.social.models import BulkUserStatItemUpdate
from accelbyte_py_sdk.api.social.models import ErrorEntity
from accelbyte_py_sdk.api.social.models import ValidationErrorEntity

"""
body:
Definition: List[BulkUserStatItemUpdate]
additional_data: Dict[str, Any]
additional_key: str
stat_code: str
update_strategy: str
user_id: str
value: float

Example: '[{"additionalData": {"6N0JCnrpFiYN7Mlr": {}, "05FfOEg79eCKiGXD": {}, "vubt5bi45oTuBnNy": {}}, "additionalKey": "oSu82v6AqydimT0E", "statCode": "K5aZ5E1FSmIPYeBl", "updateStrategy": "INCREMENT", "userId": "9NRvfd2kMXxXSnOr", "value": 0.625412284199123}, {"additionalData": {"XuEjVIioST4AVlNk": {}, "3JSs0Ymd3bhzmln7": {}, "sf0Lz11Tl3mg4Z27": {}}, "additionalKey": "y6O7jpwSMmdqNqU1", "statCode": "WDwFjXVkEZN6mNl3", "updateStrategy": "MIN", "userId": "rvT55Rj5ctcZVS6p", "value": 0.9464228780772425}, {"additionalData": {"HVyU8ydTmWWOGloc": {}, "SIfDvIGItzivAzqH": {}, "gWMSAz0MrkarISnf": {}}, "additionalKey": "Q5WD85xaQk4hdNky", "statCode": "0O97ILCH9MRx2jIY", "updateStrategy": "MIN", "userId": "y4ZzVamOUEnSnyVm", "value": 0.9001295575683518}]'
"""

result, error = bulk_update_user_stat_item_1(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

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

Example: '[{"additionalData": {"pYxXwvnFbUvBL0kA": {}, "8cAk87BliUE1OdLL": {}, "DLZ8Wy5nO7wLV3qT": {}}, "additionalKey": "4Y021k2FnbeOPgTq", "statCode": "tuWB7DdpHw6B27Da", "updateStrategy": "INCREMENT", "userId": "g4Ytd03xcQZBiAux", "value": 0.21635345164555242}, {"additionalData": {"vjSvFelb2iJrHC0l": {}, "gXATGThidU1PGtsX": {}, "PDEdUBJEKQ3E5goo": {}}, "additionalKey": "T5gD3AIfaogQBq8V", "statCode": "KwafiYG66Oe3jsrC", "updateStrategy": "OVERRIDE", "userId": "vvLhU27xej2G34wO", "value": 0.7383740442415512}, {"additionalData": {"TsVZ96NYzRyDoP1J": {}, "wBgKprhHiJpDLfOW": {}, "w1TH5u7XJv5PFzJk": {}}, "additionalKey": "6Szw1nXX9jXlxf5M", "statCode": "uSi80NlNQLilcSEp", "updateStrategy": "MAX", "userId": "jPt0MaP89WEDJ64S", "value": 0.7981465311110467}]'
"""

result, error = bulk_update_user_stat_item_1(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

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

Example: '[{"additionalData": {"d9Iw6sXFjlbThEJC": {}, "vgMPoOHVoTX1XiK8": {}, "v5xojrv4fxCUyjqo": {}}, "additionalKey": "7WtUGvwSEqCUKVl6", "statCode": "896aUDotNKRM7ct4", "updateStrategy": "INCREMENT", "userId": "GBLp098cCkThnNoW", "value": 0.05286508847368976}, {"additionalData": {"EP9d2jCl4350HoHZ": {}, "8EjRPQziBWT2IJ4s": {}, "xotXmv9QCFtSJYAk": {}}, "additionalKey": "xieWDBcyMg0woKc7", "statCode": "Rd1HJumitZDIGvps", "updateStrategy": "OVERRIDE", "userId": "lJsmZiYIeyjuqBNF", "value": 0.16815776860989806}, {"additionalData": {"44VL7YejhfqeXWLY": {}, "ndCJ9QXY6g6zOiAR": {}, "i0zrdYNM6llsBk7m": {}}, "additionalKey": "kVzkrAnzvzdLm67J", "statCode": "ZhSGZcanVfKuL1Cr", "updateStrategy": "INCREMENT", "userId": "3iNzuemlqz7Phsca", "value": 0.8770987707884251}]'
"""

result, error = bulk_update_user_stat_item_1(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

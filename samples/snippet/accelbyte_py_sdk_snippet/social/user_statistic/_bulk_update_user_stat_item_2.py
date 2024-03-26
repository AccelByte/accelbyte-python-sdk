import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.social import bulk_update_user_stat_item_2
from accelbyte_py_sdk.api.social.models import BulkStatItemUpdate
from accelbyte_py_sdk.api.social.models import BulkStatOperationResult
from accelbyte_py_sdk.api.social.models import ErrorEntity
from accelbyte_py_sdk.api.social.models import ValidationErrorEntity

"""
body:
Definition: List[BulkStatItemUpdate]
additional_data: Dict[str, Any]
stat_code: str
update_strategy: str
value: float

Example: '[{"additionalData": {"4otHtv1OJF2uZYTK": {}, "9EjdA5jQITpFiMc2": {}, "qbqzLamWx7gfK8cn": {}}, "statCode": "KZZ0cWDvuH4GY7SM", "updateStrategy": "MIN", "value": 0.9487736137972411}, {"additionalData": {"Df8kTQiy3oao44Gu": {}, "IY6wN4kY5MiDsaEL": {}, "Y09HXYupA8cED8NU": {}}, "statCode": "PABVu5CIS7XraijC", "updateStrategy": "INCREMENT", "value": 0.8419752351424287}, {"additionalData": {"rhSY3GYXpFqOyXUK": {}, "yvjXBM0BHWrpKqMV": {}, "g7wIMuvkajzQTrVl": {}}, "statCode": "f25t28IbleVqBtCI", "updateStrategy": "INCREMENT", "value": 0.19269377252394926}]'
"""

result, error = bulk_update_user_stat_item_2(
    user_id=user_id,
    body=body,
    additional_key=additional_key,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

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

Example: '[{"additionalData": {"ng8p2CFncqUo4yZA": {}, "3UPy8IqIIThMyMmP": {}, "M0tKxE2tSS0rfP0M": {}}, "additionalKey": "79v9odxpEXkIjBiV", "statCode": "9kaIbMJ4MWlysJq0", "updateStrategy": "MIN", "userId": "8zBudiwpIvk9K7BM", "value": 0.7427954286105025}, {"additionalData": {"TxKueTf7Rw5vlIBn": {}, "NoiTyX7RSpiYJLTm": {}, "4wmREqxlTKpFEYvY": {}}, "additionalKey": "gx6m7luzK1pACODA", "statCode": "Sxy5fZuaHlOovSzG", "updateStrategy": "MIN", "userId": "rrWU97JLKRCKzKE0", "value": 0.8138688844396862}, {"additionalData": {"320H4E7powNfVlxz": {}, "3Dob6ItHGPuo3XIY": {}, "5g5Jws87kew6DaDT": {}}, "additionalKey": "yMIo6cStkjMXyY4w", "statCode": "mlazrzDcj5WbJcQ1", "updateStrategy": "MIN", "userId": "zYmHD7LTyTF9SOi4", "value": 0.31659346695355206}]'
"""

result, error = bulk_update_user_stat_item_1(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

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

Example: '[{"additionalData": {"H9eQr6gaKkFssVeC": {}, "UQu4jGyKYWvmtm0F": {}, "40lyzO0zviQISJeZ": {}}, "statCode": "eXqKs76G5IKs3KkP", "updateStrategy": "MAX", "value": 0.23765177662225345}, {"additionalData": {"8MDLwkJ2jAvisQXi": {}, "efCiVY4t2Ew6BkYP": {}, "NUdhbQBZpZq0o74A": {}}, "statCode": "f2tYO6Pa52YNhOYh", "updateStrategy": "OVERRIDE", "value": 0.08197610740533012}, {"additionalData": {"BX829YCKboZr0akf": {}, "rKg9n8FkVD5THiKm": {}, "BhQPpoxkd1kPla1Y": {}}, "statCode": "3h55CwKqYWUQt2pa", "updateStrategy": "INCREMENT", "value": 0.6471578321362721}]'
"""

result, error = bulk_update_user_stat_item_2(
    user_id=user_id,
    body=body,
    additional_key=additional_key,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.social import update_user_stat_item_value_1
from accelbyte_py_sdk.api.social.models import ErrorEntity
from accelbyte_py_sdk.api.social.models import StatItemIncResult
from accelbyte_py_sdk.api.social.models import StatItemUpdate
from accelbyte_py_sdk.api.social.models import ValidationErrorEntity

"""
body:
Definition: StatItemUpdate
additional_data: Dict[str, Any]
update_strategy: str
value: float

Example: '{"additionalData": {"b32Ag0SYKnbP4VPq": {}, "2CsCbyXBp4npabXH": {}, "MH7ji4rd8ZRq3Coi": {}}, "updateStrategy": "MIN", "value": 0.7432978793767808}'
"""

result, error = update_user_stat_item_value_1(
    stat_code=stat_code,
    user_id=user_id,
    body=body,
    additional_key=additional_key,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.social import bulk_reset_user_stat_item_values
from accelbyte_py_sdk.api.social.models import ADTOObjectForResettingUserStatItems
from accelbyte_py_sdk.api.social.models import BulkStatOperationResult
from accelbyte_py_sdk.api.social.models import ErrorEntity
from accelbyte_py_sdk.api.social.models import ValidationErrorEntity

"""
body:
Definition: List[ADTOObjectForResettingUserStatItems]
additional_data: Dict[str, Any]
stat_code: str

Example: '[{"additionalData": {"vbOLoNpNzdPOrMZA": {}, "5754sCQ5owuImBwf": {}, "CS3fQNYXOOx0icVZ": {}}, "statCode": "ahifVlW1wKx9xFrA"}, {"additionalData": {"xWGWLdFeSNRW9eTw": {}, "nBFVpzxsy96fQXZH": {}, "m6Kx9sL4jPdcUPOD": {}}, "statCode": "tKZgkLR7dJ544T0M"}, {"additionalData": {"ZPCQbR42RPY77CvV": {}, "0uIdTBNvuxKkagPM": {}, "1kbwhVyHfPS9RgPo": {}}, "statCode": "TRO3KxK0tTd1hoRC"}]'
"""

result, error = bulk_reset_user_stat_item_values(
    user_id=user_id,
    body=body,
    additional_key=additional_key,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

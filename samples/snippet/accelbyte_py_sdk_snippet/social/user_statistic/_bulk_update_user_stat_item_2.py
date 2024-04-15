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

Example: '[{"additionalData": {"nykSsY8ELusIhR1n": {}, "DAZfU7lp4opvEqFH": {}, "TY9IFUM2bHGRSoAP": {}}, "statCode": "7jCLZ10R0VFrds0E", "updateStrategy": "INCREMENT", "value": 0.28280707383802994}, {"additionalData": {"obFxC202x7W5iOqF": {}, "10G58iaXNokzHSa8": {}, "fKUyHZ9G5pypDzyo": {}}, "statCode": "iNknYgXiWI2Blcom", "updateStrategy": "OVERRIDE", "value": 0.06730454331368074}, {"additionalData": {"Mobb7YGUAu9MxXkq": {}, "XrkTQsPMLpEi89di": {}, "uZwJrtaOBjnhVWK6": {}}, "statCode": "tzBnbhp150OEVGl3", "updateStrategy": "OVERRIDE", "value": 0.3388376977088047}]'
"""

result, error = bulk_update_user_stat_item_2(
    user_id=user_id,
    body=body,
    additional_key=additional_key,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.social import bulk_update_user_stat_item_v2
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

Example: '[{"additionalData": {"xBuW5eb6CtsIUznJ": {}, "FoniHTzpdAvrHVn9": {}, "5DYRrEtTJF80s5Ps": {}}, "additionalKey": "ABDF7Q6qROaoHpfq", "statCode": "s0UPVQjiuPK2k2qu", "updateStrategy": "MAX", "userId": "nyvKyuUlz9xC9OzH", "value": 0.8970775728594896}, {"additionalData": {"4bIOBUx1GjgGBYhN": {}, "dbaragkCVmJubcWS": {}, "07Kiilv1lnGj8RUx": {}}, "additionalKey": "YQUoccsRkOxLNzwg", "statCode": "OSLUCo8xvMNGhZoR", "updateStrategy": "MAX", "userId": "NmzwYhuFztr49gIe", "value": 0.2175699991846829}, {"additionalData": {"Kvfc7UkHnOZ2y7k9": {}, "Nl1qttcHxvzqFcyv": {}, "nz5Gfw15rQ0KTK1k": {}}, "additionalKey": "B012hyhpDnk2StZF", "statCode": "WQSPsKiAaWF1TI7E", "updateStrategy": "MAX", "userId": "2ptImGw6nDUAQTUU", "value": 0.1219393218022069}]'
"""

result, error = bulk_update_user_stat_item_v2(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

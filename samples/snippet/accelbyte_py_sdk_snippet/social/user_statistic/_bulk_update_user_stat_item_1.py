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

Example: '[{"additionalData": {"NzwIxXDE1bEwH06f": {}, "3D4ztZgf7FuXT09x": {}, "iwmHjMPtZ4y0uM4w": {}}, "additionalKey": "HMpRCNHI3qLAHj8q", "statCode": "qF7C3hOlsF8JVQiG", "updateStrategy": "OVERRIDE", "userId": "jBhXMRk1raveIejl", "value": 0.7248139357878566}, {"additionalData": {"ooGCGlnpWAmbykXn": {}, "vkPiTSi7nvWLy2cz": {}, "WG3tROJVJcrjoZhX": {}}, "additionalKey": "X2UAZJO0vawToHpc", "statCode": "faFPralqHOomcGGJ", "updateStrategy": "MAX", "userId": "Mc6vjID1gE5MhIu1", "value": 0.4140406395093781}, {"additionalData": {"p1nRWMQEkTS7FOqg": {}, "93llIWWiEXYJ3wa9": {}, "fqnoGFGYuSTMhLnF": {}}, "additionalKey": "xjN3ZP390zyFNKzC", "statCode": "DwljBFUMx9P5UGfP", "updateStrategy": "INCREMENT", "userId": "41eekepBhv7Mj5uj", "value": 0.9262822248328828}]'
"""

result, error = bulk_update_user_stat_item_1(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

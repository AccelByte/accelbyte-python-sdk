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

Example: '[{"additionalData": {"vpBjaUusiSCo2KFe": {}, "kVPxaL1WywMjP2QF": {}, "JGWviwJl9TUXW3kH": {}}, "additionalKey": "uiUP7OFKp8AE6n2G", "statCode": "OeIBKKogVBVpMA9d", "updateStrategy": "MIN", "userId": "65Fe9RmxYLJ356vt", "value": 0.10377691340948503}, {"additionalData": {"iyIfvbCWNzYBx9jz": {}, "fWASEOetxZppYatP": {}, "4ZrQYvlUrc2T0TgH": {}}, "additionalKey": "lCSois1MmAnKaanR", "statCode": "XeWMeqH8WOs0KnB7", "updateStrategy": "INCREMENT", "userId": "Kh5d9in6O1YTUIRC", "value": 0.28871174274907674}, {"additionalData": {"3TVPWjTA4XRUHpLt": {}, "3zoUoLioTZ4yP94z": {}, "uYaVMicyjuOEiESy": {}}, "additionalKey": "aE2bm95XwN0huLz0", "statCode": "JbiBKqvGpcLEDzSa", "updateStrategy": "OVERRIDE", "userId": "yTwB8HE40cfuv1gG", "value": 0.808786542811071}]'
"""

result, error = bulk_update_user_stat_item_v2(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

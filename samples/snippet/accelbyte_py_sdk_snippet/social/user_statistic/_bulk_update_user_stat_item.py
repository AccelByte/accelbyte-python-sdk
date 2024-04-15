import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.social import bulk_update_user_stat_item
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

Example: '[{"additionalData": {"WJ5MMHitbixkF67n": {}, "AgqHbqJOx5LV1vVI": {}, "MdnuLptVvm5aUAd0": {}}, "statCode": "fjoh294n7Nv0RZR7", "updateStrategy": "MAX", "value": 0.8719673924179199}, {"additionalData": {"Xvjfye3O9oxDFKOC": {}, "qQqvGR8tWOKMLObA": {}, "98DLvkdM0We0OrPJ": {}}, "statCode": "B8PNtnGyECnO5Cpr", "updateStrategy": "MIN", "value": 0.7759439055681865}, {"additionalData": {"o8YZXBtUeLZq7Z5g": {}, "h2kztRJ8HE6Wz9TG": {}, "7z9pFtQzUDBv80Vu": {}}, "statCode": "k4AViJ3iLiF8LukS", "updateStrategy": "OVERRIDE", "value": 0.1913163301609193}]'
"""

result, error = bulk_update_user_stat_item(
    user_id=user_id,
    body=body,
    additional_key=additional_key,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

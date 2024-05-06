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

Example: '[{"additionalData": {"8NpJFWsXzRvNP9iZ": {}, "wzYelBvbrSXIVuax": {}, "VGolFUOFFI8aI4ji": {}}, "statCode": "QyCJzDk2jb2oFrlS", "updateStrategy": "MAX", "value": 0.5946973035537201}, {"additionalData": {"U0k011R1C3ncey95": {}, "AoOB5OFweNkQ3BgX": {}, "HWwDYJ738Kp8O3yY": {}}, "statCode": "BbUGbMFCEjIlVVlD", "updateStrategy": "INCREMENT", "value": 0.09692398791016232}, {"additionalData": {"SoNDTLSOyZ0uSLx4": {}, "qVML04YDGHF3lyTO": {}, "mftJEAwf2wdSFbor": {}}, "statCode": "D1lhmwYrgdRX9UcS", "updateStrategy": "MIN", "value": 0.3045708512326224}]'
"""

result, error = bulk_update_user_stat_item_2(
    user_id=user_id,
    body=body,
    additional_key=additional_key,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

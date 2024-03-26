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

Example: '[{"additionalData": {"JuWtcIsN5IXPm1ry": {}, "B0gnYROmsraLL9qm": {}, "bwBaM2wjjaGpfL4n": {}}, "statCode": "v1bmK2WNObx7Pkd8", "updateStrategy": "OVERRIDE", "value": 0.2080061459993826}, {"additionalData": {"7XwS1a1sMVmxC1Zz": {}, "Ba8AdYwaQ2GzKv38": {}, "E4xiA9e9VZWpSFkP": {}}, "statCode": "Uhe6r72RsRNRGiMR", "updateStrategy": "INCREMENT", "value": 0.7955699550711537}, {"additionalData": {"wtSbuoGz5pjaCM8A": {}, "BaBrSuHT4hgYDvIw": {}, "BFhYcaMHdYt3wK1g": {}}, "statCode": "HN91hl0w1c4oIHwG", "updateStrategy": "MIN", "value": 0.9850669563895248}]'
"""

result, error = bulk_update_user_stat_item(
    user_id=user_id,
    body=body,
    additional_key=additional_key,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

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

Example: '[{"additionalData": {"9SjVjoirRUYMfSeL": {}, "8XlbLiBVqgyNfo6N": {}, "uHtiu1vrpdTLT76m": {}}, "statCode": "EuRWiFHLFViAbpLY", "updateStrategy": "OVERRIDE", "value": 0.19463319528593526}, {"additionalData": {"Z5H9rXtlon0Yfqfi": {}, "zBeemdj2nGvhKLjQ": {}, "5gM8xlrns41FC7qJ": {}}, "statCode": "Ikw3trrJG78imhtH", "updateStrategy": "MAX", "value": 0.40810737570771216}, {"additionalData": {"1uKiLXwbOrrniQQu": {}, "1w4R7NEWTs3Sbbuy": {}, "UEu6Neks2ARWy6ox": {}}, "statCode": "BE3iWbKKeSZFzXGZ", "updateStrategy": "INCREMENT", "value": 0.016720419240365714}]'
"""

result, error = bulk_update_user_stat_item(
    user_id=user_id,
    body=body,
    additional_key=additional_key,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

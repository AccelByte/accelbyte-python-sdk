import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.social import update_user_stat_item_value
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

Example: '{"additionalData": {"VCLqlsU8drBI7eFj": {}, "SEsvQ2I4X3IPv7Dt": {}, "z5IXanFEbuSmM2p0": {}}, "updateStrategy": "INCREMENT", "value": 0.434236723790275}'
"""

result, error = update_user_stat_item_value(
    stat_code=stat_code,
    user_id=user_id,
    body=body,
    additional_key=additional_key,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

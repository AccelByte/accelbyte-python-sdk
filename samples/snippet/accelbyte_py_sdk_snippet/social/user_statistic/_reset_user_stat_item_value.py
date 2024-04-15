import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.social import reset_user_stat_item_value
from accelbyte_py_sdk.api.social.models import ErrorEntity
from accelbyte_py_sdk.api.social.models import StatItemIncResult
from accelbyte_py_sdk.api.social.models import StatResetInfo
from accelbyte_py_sdk.api.social.models import ValidationErrorEntity

"""
body:
Definition: StatResetInfo
additional_data: Dict[str, Any]

Example: '{"additionalData": {"UF8aLie5za1PCdRh": {}, "44s24E6XjjFBmq0c": {}, "tOfijbP5hYv14qso": {}}}'
"""

result, error = reset_user_stat_item_value(
    stat_code=stat_code,
    user_id=user_id,
    body=body,
    additional_key=additional_key,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

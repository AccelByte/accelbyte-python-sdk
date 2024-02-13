import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.social import reset_user_stat_item_value_1
from accelbyte_py_sdk.api.social.models import ErrorEntity
from accelbyte_py_sdk.api.social.models import StatItemIncResult
from accelbyte_py_sdk.api.social.models import ValidationErrorEntity

result, error = reset_user_stat_item_value_1(
    stat_code=stat_code,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

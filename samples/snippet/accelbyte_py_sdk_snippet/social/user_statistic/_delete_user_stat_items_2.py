import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.social import delete_user_stat_items_2
from accelbyte_py_sdk.api.social.models import ErrorEntity
from accelbyte_py_sdk.api.social.models import ValidationErrorEntity

result, error = delete_user_stat_items_2(
    stat_code=stat_code,
    user_id=user_id,
    additional_key=additional_key,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

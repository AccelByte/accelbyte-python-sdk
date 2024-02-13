import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.social import public_create_user_stat_item
from accelbyte_py_sdk.api.social.models import ErrorEntity
from accelbyte_py_sdk.api.social.models import ValidationErrorEntity

result, error = public_create_user_stat_item(
    stat_code=stat_code,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

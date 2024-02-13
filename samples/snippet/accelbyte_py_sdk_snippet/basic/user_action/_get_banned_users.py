import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.basic import get_banned_users
from accelbyte_py_sdk.api.basic.models import ADTOObjectForEqu8UserBanStatus
from accelbyte_py_sdk.api.basic.models import ErrorEntity
from accelbyte_py_sdk.api.basic.models import ValidationErrorEntity

result, error = get_banned_users(
    user_ids=user_ids,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

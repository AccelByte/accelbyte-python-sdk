import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.social import admin_list_users_stat_items
from accelbyte_py_sdk.api.social.models import ADTOObjectForUserStatItemValue
from accelbyte_py_sdk.api.social.models import ErrorEntity
from accelbyte_py_sdk.api.social.models import ValidationErrorEntity

result, error = admin_list_users_stat_items(
    user_id=user_id,
    additional_key=additional_key,
    stat_codes=stat_codes,
    tags=tags,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

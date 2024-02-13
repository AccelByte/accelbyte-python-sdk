import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.social import public_list_all_my_stat_items
from accelbyte_py_sdk.api.social.models import ADTOObjectForUserStatItemValue
from accelbyte_py_sdk.api.social.models import ErrorEntity
from accelbyte_py_sdk.api.social.models import ValidationErrorEntity

result, error = public_list_all_my_stat_items(
    additional_key=additional_key,
    stat_codes=stat_codes,
    tags=tags,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

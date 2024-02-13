import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.social import bulk_fetch_or_default_stat_items
from accelbyte_py_sdk.api.social.models import ADTOObjectForUserStatItemValue
from accelbyte_py_sdk.api.social.models import ErrorEntity
from accelbyte_py_sdk.api.social.models import ValidationErrorEntity

result, error = bulk_fetch_or_default_stat_items(
    stat_code=stat_code,
    user_ids=user_ids,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

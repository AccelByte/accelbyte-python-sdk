import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.social import bulk_fetch_stat_items_1
from accelbyte_py_sdk.api.social.models import ErrorEntity
from accelbyte_py_sdk.api.social.models import UserStatItemInfo
from accelbyte_py_sdk.api.social.models import ValidationErrorEntity

result, error = bulk_fetch_stat_items_1(
    stat_code=stat_code,
    user_ids=user_ids,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

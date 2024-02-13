import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.social import get_global_stat_item_by_stat_code_1
from accelbyte_py_sdk.api.social.models import ErrorEntity
from accelbyte_py_sdk.api.social.models import GlobalStatItemInfo

result, error = get_global_stat_item_by_stat_code_1(
    stat_code=stat_code,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

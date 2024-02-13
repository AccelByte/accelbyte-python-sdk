import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.social import public_list_my_stat_cycle_items
from accelbyte_py_sdk.api.social.models import ErrorEntity
from accelbyte_py_sdk.api.social.models import UserStatCycleItemPagingSlicedResult
from accelbyte_py_sdk.api.social.models import ValidationErrorEntity

result, error = public_list_my_stat_cycle_items(
    cycle_id=cycle_id,
    limit=limit,
    offset=offset,
    sort_by=sort_by,
    stat_codes=stat_codes,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.social import get_stat_items
from accelbyte_py_sdk.api.social.models import ErrorEntity
from accelbyte_py_sdk.api.social.models import StatItemValuePagingSlicedResult

result, error = get_stat_items(
    stat_code=stat_code,
    limit=limit,
    offset=offset,
    sort_by=sort_by,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

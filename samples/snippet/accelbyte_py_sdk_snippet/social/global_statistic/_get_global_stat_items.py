import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.social import get_global_stat_items
from accelbyte_py_sdk.api.social.models import ErrorEntity
from accelbyte_py_sdk.api.social.models import GlobalStatItemPagingSlicedResult

result, error = get_global_stat_items(
    limit=limit,
    offset=offset,
    stat_codes=stat_codes,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

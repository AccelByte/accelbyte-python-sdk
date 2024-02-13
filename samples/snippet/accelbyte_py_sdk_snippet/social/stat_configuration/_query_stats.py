import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.social import query_stats
from accelbyte_py_sdk.api.social.models import ErrorEntity
from accelbyte_py_sdk.api.social.models import StatPagingSlicedResult

result, error = query_stats(
    keyword=keyword,
    is_global=is_global,
    is_public=is_public,
    limit=limit,
    offset=offset,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

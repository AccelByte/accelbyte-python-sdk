import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.seasonpass import query_seasons
from accelbyte_py_sdk.api.seasonpass.models import ErrorEntity
from accelbyte_py_sdk.api.seasonpass.models import ListSeasonInfoPagingSlicedResult

result, error = query_seasons(
    limit=limit,
    offset=offset,
    status=status,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

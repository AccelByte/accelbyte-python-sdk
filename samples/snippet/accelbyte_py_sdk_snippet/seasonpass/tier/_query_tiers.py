import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.seasonpass import query_tiers
from accelbyte_py_sdk.api.seasonpass.models import ErrorEntity
from accelbyte_py_sdk.api.seasonpass.models import TierPagingSlicedResult

result, error = query_tiers(
    season_id=season_id,
    limit=limit,
    offset=offset,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

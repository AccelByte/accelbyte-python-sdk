import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.seasonpass import get_full_season
from accelbyte_py_sdk.api.seasonpass.models import ErrorEntity
from accelbyte_py_sdk.api.seasonpass.models import FullSeasonInfo

result, error = get_full_season(
    season_id=season_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

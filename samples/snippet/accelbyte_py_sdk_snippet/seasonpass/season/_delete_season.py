import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.seasonpass import delete_season
from accelbyte_py_sdk.api.seasonpass.models import ErrorEntity

result, error = delete_season(
    season_id=season_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

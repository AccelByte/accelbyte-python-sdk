import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.seasonpass import get_user_season
from accelbyte_py_sdk.api.seasonpass.models import ClaimableUserSeasonInfo
from accelbyte_py_sdk.api.seasonpass.models import ErrorEntity

result, error = get_user_season(
    season_id=season_id,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

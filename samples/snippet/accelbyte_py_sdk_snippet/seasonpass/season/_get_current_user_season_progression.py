import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.seasonpass import get_current_user_season_progression
from accelbyte_py_sdk.api.seasonpass.models import ErrorEntity
from accelbyte_py_sdk.api.seasonpass.models import UserSeasonSummary

result, error = get_current_user_season_progression(
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

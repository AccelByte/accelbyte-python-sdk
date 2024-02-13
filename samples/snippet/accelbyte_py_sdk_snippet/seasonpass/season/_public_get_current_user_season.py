import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.seasonpass import public_get_current_user_season
from accelbyte_py_sdk.api.seasonpass.models import ClaimableUserSeasonInfo
from accelbyte_py_sdk.api.seasonpass.models import ErrorEntity

result, error = public_get_current_user_season(
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

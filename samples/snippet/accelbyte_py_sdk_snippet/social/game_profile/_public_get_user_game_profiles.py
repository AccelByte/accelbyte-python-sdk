import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.social import public_get_user_game_profiles
from accelbyte_py_sdk.api.social.models import ErrorEntity
from accelbyte_py_sdk.api.social.models import UserGameProfiles

result, error = public_get_user_game_profiles(
    user_ids=user_ids,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

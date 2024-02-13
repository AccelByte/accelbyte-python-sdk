import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.social import get_profile
from accelbyte_py_sdk.api.social.models import ErrorEntity
from accelbyte_py_sdk.api.social.models import GameProfileInfo

result, error = get_profile(
    profile_id=profile_id,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

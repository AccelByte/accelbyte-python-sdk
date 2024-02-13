import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.social import public_get_user_profiles
from accelbyte_py_sdk.api.social.models import ErrorEntity
from accelbyte_py_sdk.api.social.models import GameProfileHeader

result, error = public_get_user_profiles(
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

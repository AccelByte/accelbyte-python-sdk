import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.basic import public_get_user_profile_public_info
from accelbyte_py_sdk.api.basic.models import ErrorEntity
from accelbyte_py_sdk.api.basic.models import UserProfilePublicInfo
from accelbyte_py_sdk.api.basic.models import ValidationErrorEntity

result, error = public_get_user_profile_public_info(
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

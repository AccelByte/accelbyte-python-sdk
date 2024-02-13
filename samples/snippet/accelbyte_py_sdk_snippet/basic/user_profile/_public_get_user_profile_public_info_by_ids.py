import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.basic import public_get_user_profile_public_info_by_ids
from accelbyte_py_sdk.api.basic.models import UserProfilePublicInfo
from accelbyte_py_sdk.api.basic.models import ValidationErrorEntity

result, error = public_get_user_profile_public_info_by_ids(
    user_ids=user_ids,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

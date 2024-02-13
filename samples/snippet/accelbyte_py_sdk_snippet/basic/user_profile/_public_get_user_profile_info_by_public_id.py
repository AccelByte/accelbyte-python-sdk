import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.basic import public_get_user_profile_info_by_public_id
from accelbyte_py_sdk.api.basic.models import ErrorEntity
from accelbyte_py_sdk.api.basic.models import UserProfilePublicInfo
from accelbyte_py_sdk.api.basic.models import ValidationErrorEntity

result, error = public_get_user_profile_info_by_public_id(
    public_id=public_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

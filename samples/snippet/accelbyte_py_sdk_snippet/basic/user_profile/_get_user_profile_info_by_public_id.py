import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.basic import get_user_profile_info_by_public_id
from accelbyte_py_sdk.api.basic.models import ErrorEntity
from accelbyte_py_sdk.api.basic.models import UserProfileInfo
from accelbyte_py_sdk.api.basic.models import ValidationErrorEntity

result, error = get_user_profile_info_by_public_id(
    public_id=public_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

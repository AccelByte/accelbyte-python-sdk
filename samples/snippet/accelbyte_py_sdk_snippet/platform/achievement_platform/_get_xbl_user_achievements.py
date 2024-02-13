import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import get_xbl_user_achievements
from accelbyte_py_sdk.api.platform.models import ValidationErrorEntity
from accelbyte_py_sdk.api.platform.models import XblUserAchievements

result, error = get_xbl_user_achievements(
    user_id=user_id,
    xbox_user_id=xbox_user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import update_xbl_user_achievement
from accelbyte_py_sdk.api.platform.models import ValidationErrorEntity
from accelbyte_py_sdk.api.platform.models import XblAchievementUpdateRequest

"""
body:
Definition: XblAchievementUpdateRequest
achievements: List[XboxAchievement]
Definition: List[XboxAchievement]
    id_: str
    percent_complete: int
service_config_id: str
title_id: str
xbox_user_id: str

Example: '{"achievements": [{"id": "tk8mH1xNTdoIPElV", "percentComplete": 52}, {"id": "WytLqZicGrtPyLUZ", "percentComplete": 21}, {"id": "bpBUuHBQ4o2MGwul", "percentComplete": 4}], "serviceConfigId": "zbrOZQHIzDcMtZut", "titleId": "UW72vqMz9Af1a5u8", "xboxUserId": "jsmS49qUiSXyUgFA"}'
"""

result, error = update_xbl_user_achievement(
    user_id=user_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

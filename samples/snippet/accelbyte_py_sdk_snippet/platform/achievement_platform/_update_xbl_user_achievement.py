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

Example: '{"achievements": [{"id": "7CCDSyEcoeWiaRSU", "percentComplete": 77}, {"id": "zeIPYgwb9OHiaW2q", "percentComplete": 22}, {"id": "vO3kfLj8cv0ApyN3", "percentComplete": 18}], "serviceConfigId": "BCrBo44qkcQHIPqy", "titleId": "UwuBaqQIIqS8iNKq", "xboxUserId": "ixIdxv9YYzqmA4c4"}'
"""

result, error = update_xbl_user_achievement(
    user_id=user_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

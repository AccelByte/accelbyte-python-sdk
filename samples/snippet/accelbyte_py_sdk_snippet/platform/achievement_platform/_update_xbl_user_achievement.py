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

Example: '{"achievements": [{"id": "2B598LUaAznRb6sS", "percentComplete": 50}, {"id": "mUmzYRkrliHLgmwK", "percentComplete": 65}, {"id": "DWNs1HQzhIUBJpl9", "percentComplete": 39}], "serviceConfigId": "oRqlJb4JEV2GIFbU", "titleId": "8UzBJBQnkgq2xbLJ", "xboxUserId": "0y6aE3RAFJasd1j7"}'
"""

result, error = update_xbl_user_achievement(
    user_id=user_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

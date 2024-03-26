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

Example: '{"achievements": [{"id": "WLWuGwwEDKnVL7sI", "percentComplete": 73}, {"id": "zvmRw9QFyfG4HCqV", "percentComplete": 80}, {"id": "U3imDFCzpG48yhkn", "percentComplete": 91}], "serviceConfigId": "QqDJtW1cw89ouYxn", "titleId": "Amp7HbmxBflqH3cE", "xboxUserId": "6OMiOYhlZBxJ4cAe"}'
"""

result, error = update_xbl_user_achievement(
    user_id=user_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

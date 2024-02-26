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

Example: '{"achievements": [{"id": "bVYayZiX0Hvk0xJF", "percentComplete": 73}, {"id": "RjDsszxuJGniYIYG", "percentComplete": 24}, {"id": "Yo3eSTF0Rv4LCJ8u", "percentComplete": 89}], "serviceConfigId": "ZDe7PRgZgPxeHHvm", "titleId": "iGh10zWZNCHnhWpf", "xboxUserId": "VetOYIG3NExQIJMq"}'
"""

result, error = update_xbl_user_achievement(
    user_id=user_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

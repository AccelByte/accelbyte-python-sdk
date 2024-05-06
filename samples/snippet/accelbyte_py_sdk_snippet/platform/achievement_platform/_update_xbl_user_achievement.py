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

Example: '{"achievements": [{"id": "KvA6ynG5d2IvrOBR", "percentComplete": 99}, {"id": "q6itCyTgnLkgHjl4", "percentComplete": 87}, {"id": "Kzkai7770gjckkpo", "percentComplete": 34}], "serviceConfigId": "glpg5rBIrwEqIvBR", "titleId": "gaaa8aXT0lTIhky5", "xboxUserId": "LeTqLstwOsvStP3C"}'
"""

result, error = update_xbl_user_achievement(
    user_id=user_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

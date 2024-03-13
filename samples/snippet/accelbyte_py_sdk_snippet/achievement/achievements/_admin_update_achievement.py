import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.achievement import admin_update_achievement
from accelbyte_py_sdk.api.achievement.models import ModelsAchievementResponse
from accelbyte_py_sdk.api.achievement.models import ModelsAchievementUpdateRequest
from accelbyte_py_sdk.api.achievement.models import ResponseError

"""
body:
Definition: ModelsAchievementUpdateRequest
custom_attributes: Dict[str, Any]
default_language: str
description: Dict[str, str]
global_: bool
goal_value: float
hidden: bool
incremental: bool
locked_icons: List[ModelsIcon]
Definition: List[ModelsIcon]
    slug: str
    url: str
name: Dict[str, str]
stat_code: str
tags: List[str]
unlocked_icons: List[ModelsIcon]
Definition: List[ModelsIcon]
    slug: str
    url: str

Example: '{"customAttributes": {"MjCDkPSXSyXdHUQ7": {}, "QwawghPa1IX1nfVI": {}, "STtiyowAyjwiWlVH": {}}, "defaultLanguage": "n2frO0myOGxmaGnL", "description": {"V3Ry8jSZIg7q97c1": "YQJ22TP7wOhTgs0v", "Jo1kxF8P2UaG68VF": "C22TBtRjZe708QKm", "75PLv1lQNGNXbSR7": "jwHqjaHiofaCtxLv"}, "global": false, "goalValue": 0.6694101746161754, "hidden": false, "incremental": false, "lockedIcons": [{"slug": "4j8NBLaUZTcWzzuR", "url": "VgPN1HifhF5FMqJY"}, {"slug": "9azyI8tbfT33FySJ", "url": "Up0l8U35mnNVK2qR"}, {"slug": "uJmhQUkJdtqkqKZh", "url": "x40yUe4xhe8g9xGz"}], "name": {"K8xi4u628R1HBVK5": "FChDAz2fL0IUWoNU", "TCLGPKcfFzAtTqDI": "Y8Yiirf8K2XnUaAv", "DlgNsmZRyHyK1902": "FfTnQm2ZQ56FFknS"}, "statCode": "iDk4pPm1OxD0OTKR", "tags": ["xb5DwrkNHiKO15ch", "qh50hco63KK01bib", "l091Asxbd7wIswG3"], "unlockedIcons": [{"slug": "Nb2iulNzNhlJmdct", "url": "Aiey9PvTmPan1D8h"}, {"slug": "KrX641oDoKMQZP5J", "url": "17ia3CXNL45NlIKC"}, {"slug": "OWDUSjUMhPyO3BG6", "url": "LD3G1urdb5z1kbhx"}]}'
"""

result, error = admin_update_achievement(
    body=body,
    achievement_code=achievement_code,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

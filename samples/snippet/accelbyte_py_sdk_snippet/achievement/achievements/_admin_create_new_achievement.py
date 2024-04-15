import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.achievement import admin_create_new_achievement
from accelbyte_py_sdk.api.achievement.models import ModelsAchievementRequest
from accelbyte_py_sdk.api.achievement.models import ModelsAchievementResponse
from accelbyte_py_sdk.api.achievement.models import ResponseError

"""
body:
Definition: ModelsAchievementRequest
achievement_code: str
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

Example: '{"achievementCode": "w6bfjHDFlywcDBvI", "customAttributes": {"Ng07PFI1cAAclGwA": {}, "ITApvwMUyOxjrQYf": {}, "ww6GtATFhH5xLBt7": {}}, "defaultLanguage": "WUJckH7mPUsI0AKt", "description": {"Slfut7HY7oFbYiKk": "eJOIx26Kqenpo2YR", "20JfHbiek6RbpmO7": "4rooLHaIldAjdbJ7", "lx7W0Eb09Qk0pT1L": "bd1jfot8ewo5fwo4"}, "global": false, "goalValue": 0.2271413137525926, "hidden": false, "incremental": false, "lockedIcons": [{"slug": "CyZKD78V0u3oTQh6", "url": "n3BUJZtO7ibQAP2H"}, {"slug": "adOx6gyAxgZlDJrU", "url": "6UIodwaD86RaL71k"}, {"slug": "GEL3t0mrrVYUJNeg", "url": "e2lwVyCueLS7RW2Q"}], "name": {"cz6mfiW5uXugGVIe": "kGaFP1HE1IggdnsT", "rWIaLVfgGij8gI5h": "QbbGWLwLVkfX4ETi", "4J5VrTMZhNG04WLx": "vDzI4wDouXdmuWj7"}, "statCode": "Xu1zTXOq8eykBC5E", "tags": ["hNnBoCAq8uLrAs2F", "KU9RByUpjLXlbge9", "pPBzrFo4D9clRFuD"], "unlockedIcons": [{"slug": "Tj8I7IEil2ZXSKTr", "url": "EHb4I3DkrfyToC3a"}, {"slug": "78DDrrEqsy9sZ2ag", "url": "ZvhH7pgQDldpt53I"}, {"slug": "JVAFkwOWVZIbZIQB", "url": "3M6iSVyZ2E5fsgsR"}]}'
"""

result, error = admin_create_new_achievement(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

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

Example: '{"customAttributes": {"TnNX9Nl5k6zCle0X": {}, "ZUsEmbTzEK5dPUzN": {}, "gOSgJ1AsMlQEDXcx": {}}, "defaultLanguage": "sca2ihY0JA8X11G5", "description": {"wbbI3xUCOvNbjAl6": "ykbnvlmKyMrrKlqf", "1PpVqaXqWLEkO1NG": "pMew9zyOktx3unbm", "rIl2zea9ZioqH4YR": "bzJWf6j3IIKwN9Mj"}, "global": true, "goalValue": 0.5814978310484863, "hidden": true, "incremental": true, "lockedIcons": [{"slug": "osEludiQMa5gCB03", "url": "zG0ZY2wFBwTv9Q56"}, {"slug": "6uZdSEESFRDMcXj5", "url": "FyCVxbRWBse5IxbZ"}, {"slug": "CRH3yJunBs1P7Stx", "url": "hpGMSNMPALxDQpWr"}], "name": {"wDQtbNog9NGZLWR7": "gDLpVROtNSgdWv8t", "q7XkPTULEoOrGNkp": "RkTOGyBPL1OhHfWl", "NQ04HCYjZ4q3WNBE": "whi8gBSYHAZ9MYSL"}, "statCode": "roWAyy4rpdKJxSPr", "tags": ["SMRqa2vBJLfRZyZa", "JVUnLiBoYny3RBIH", "A7lCyFEmlBXyANya"], "unlockedIcons": [{"slug": "Xdmw1KvRls7EHXYo", "url": "sgxhRHPcQmgtP1IV"}, {"slug": "LtNz8x4WkvzvJQ2H", "url": "BoKHkBEMSj0un4id"}, {"slug": "Dqio0RAM0QGg9UcI", "url": "vCCZClVFtVXvSYCp"}]}'
"""

result, error = admin_update_achievement(
    body=body,
    achievement_code=achievement_code,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

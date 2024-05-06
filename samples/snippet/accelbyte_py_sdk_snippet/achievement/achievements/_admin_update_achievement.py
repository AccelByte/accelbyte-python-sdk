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

Example: '{"customAttributes": {"eKqxz5AFz0EiyN6V": {}, "bYKXfWhDQSo1thSG": {}, "5xoYv6I9bbAfnBcM": {}}, "defaultLanguage": "9sS5ZCIMIoG4Skfs", "description": {"rwOOsm2dQCzAr1IA": "sDXMRmFjlnyQNfOs", "gc5EKz3jCK1brWN0": "XeQO1hqM2d2KxnQz", "EkyirH3862iA4Lk4": "sx0eGFdIAfrnA8Cg"}, "global": true, "goalValue": 0.703697361087427, "hidden": true, "incremental": false, "lockedIcons": [{"slug": "mPjmORsBjLJKowq1", "url": "HO8JO33pTrpHpYlm"}, {"slug": "o6hit2AjAcMvt9ut", "url": "TndU8nW4JRpYbTTd"}, {"slug": "eSmBO3GJWr4R7ATY", "url": "moIxnw04rJojNtRD"}], "name": {"A1KFCt8X537qUPwD": "lMPdTRY8SUMdUqFu", "AselL32czKE0MEfp": "oH86dV5EW9WDexms", "ZC0NDHEDXCmPEs9z": "buFwh5wY21tgMS4x"}, "statCode": "LqkLPRgasiHxk7XT", "tags": ["rETkxaBR5aFHvj0d", "nyZudpazxZRkDNO0", "1bFomR8pU8USvWPQ"], "unlockedIcons": [{"slug": "pKo6T4DBxtdG5VKM", "url": "hTpDKv9Ax8Z5TxyI"}, {"slug": "JdepawTU7KRB3h2l", "url": "XMu5VQ7LG9YAjU66"}, {"slug": "HOygqi6kHmMv8E1k", "url": "PQYzib27Ec72iJfy"}]}'
"""

result, error = admin_update_achievement(
    body=body,
    achievement_code=achievement_code,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

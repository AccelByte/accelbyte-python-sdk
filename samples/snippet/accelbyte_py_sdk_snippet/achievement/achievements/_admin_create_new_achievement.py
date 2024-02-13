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

Example: '{"achievementCode": "zujitihSqSBn6KoQ", "customAttributes": {"3FLa1fkoAx6RH6jV": {}, "8auEF5oSnDwrkKZ4": {}, "kXoQWoEMGghd9G0j": {}}, "defaultLanguage": "mJGFmtxKntIGmkO0", "description": {"3s9Gs5HXKTSOLeks": "l0g7yDqZCJrJiLE3", "FDDenkNMY9wg21Ua": "X9nLuqaP8FLFm9Jn", "JCnkDCOO3I0NifeF": "k1JKbvsiWRenGOwH"}, "global": false, "goalValue": 0.7983999231807636, "hidden": true, "incremental": false, "lockedIcons": [{"slug": "LiymAKfgN3wgFXqe", "url": "ot6bqN9jkMQU4pvY"}, {"slug": "4ddPqPdPtukKuNHY", "url": "triNJwJzsptnoTWX"}, {"slug": "FaM8jFlNzhOuegOi", "url": "DfKqDamJ8JQUnDE8"}], "name": {"5Bt8l1L2YXB0pDbl": "xP1V3wMeWZgCecyM", "AYxjKIwE2NoWRZN4": "KChwmNUta6yyersf", "neteUZyyvVSPMG6j": "brM5uUKg1GFLhRWg"}, "statCode": "g7zOuPiHwYpmM3jM", "tags": ["nEb8qSILEPMqHPCv", "xwDENdrEk4ffgep5", "lQsAoUAkKfI4NR9H"], "unlockedIcons": [{"slug": "q40GWpDQ6D4jPBIk", "url": "MRCRJcmF5R36ENTD"}, {"slug": "sdglIBNVMeyTfjF0", "url": "7xClDIeFVzvzElJA"}, {"slug": "dSdrScWTuQTlRWBL", "url": "oPZFwtATIMt6jGDI"}]}'
"""

result, error = admin_create_new_achievement(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

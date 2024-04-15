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

Example: '{"customAttributes": {"2yG2nmvjvk9P5XcQ": {}, "oLVSlhOxYIJ26TY2": {}, "b4olGTaIZXtYvQmU": {}}, "defaultLanguage": "EnbpodYX1QaxcfAg", "description": {"4V7HhG0r8fUI9S3U": "zv98ZP682aihK4HY", "FmN65HLNUHuzpfAA": "s9gtzPPiXowv0hv5", "1oJvsLgjJz93G7J3": "E0drgGzYEcZrinva"}, "global": true, "goalValue": 0.5490799196987589, "hidden": false, "incremental": true, "lockedIcons": [{"slug": "MJJY7L3Dwy671of9", "url": "4NgsvbvIWdHLbylC"}, {"slug": "U2CIqzinw20GFwBs", "url": "w5eUkGHM7kWXgeCz"}, {"slug": "qV6nLtOfaGxU5yLH", "url": "LQKAFibCaWr5p2N2"}], "name": {"2wFqMRttkp8pgpqu": "CcfZqByxpvZwlPnw", "ty8iA11h3tsweCAd": "YjEuZWJ2S1Tn6BRB", "8MFOwxfRiseSqc94": "lbEH4XfFIDTsgC48"}, "statCode": "9NGlqCxrT00u0YzF", "tags": ["6ZKuOVFPBkzkHFz4", "snRoHgx9VBgKaYAX", "H6L3dzlWSh74yQxP"], "unlockedIcons": [{"slug": "csXboDgZeCAsDROW", "url": "jFD6QA040JuuhAwy"}, {"slug": "MENj2nNkqaSp8Uf6", "url": "Dym8Qus1NWtVoMRQ"}, {"slug": "fHNAsPeQQxB5m9RT", "url": "NKGpDWxxW566fomZ"}]}'
"""

result, error = admin_update_achievement(
    body=body,
    achievement_code=achievement_code,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

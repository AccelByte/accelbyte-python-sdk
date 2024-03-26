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

Example: '{"customAttributes": {"ZL7HlMpnPBDorRGr": {}, "cX5zpcKpHJ8enEAd": {}, "bRJ5eW1PntTG1yni": {}}, "defaultLanguage": "ZSpof1XGTFOmSZzP", "description": {"DZ2gbT0xDAf9jLb2": "5MyulQuEfA5Q8d5q", "WQZ9FirFzZURNjpJ": "C3dFgCrWCPvSedkS", "NUK4TOD2dhYZm1oQ": "VWSN60k4nRIYR8Ty"}, "global": true, "goalValue": 0.1773560307037506, "hidden": true, "incremental": true, "lockedIcons": [{"slug": "q02NmQHHJsNkLm6U", "url": "h3soJ7kc5Ks39ocD"}, {"slug": "dggadu50vHrpYqm4", "url": "zhEJgvqFm14CmuPh"}, {"slug": "K6laGHnjymOFZZmS", "url": "co1JNUVxjHctpqtA"}], "name": {"784iUV6CUd89VJUu": "uZhgcNICeI4ltez6", "m2fCnMz06Qz3M2Kj": "9FFbXWJ1gUFOx7un", "q5jBApdhPYLWC10v": "53A1OOt585ViV0TC"}, "statCode": "Yfr3x5Dl1GsIXsVc", "tags": ["jWMX35STAFeq7qFJ", "ew6hGwp7gpcxTtqC", "dLBprJSuFjovyHlH"], "unlockedIcons": [{"slug": "rc4d4FbeoEafKyR5", "url": "PtNSVO65J4BpxRd1"}, {"slug": "K34e2G6UVzgTJgTL", "url": "sWUPwlOnDgpCmUbB"}, {"slug": "xI90uzGPnrfgGbqa", "url": "uLpoi3GxPDyUXiJb"}]}'
"""

result, error = admin_update_achievement(
    body=body,
    achievement_code=achievement_code,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

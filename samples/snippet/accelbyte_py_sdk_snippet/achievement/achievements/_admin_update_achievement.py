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

Example: '{"customAttributes": {"pqCNDOUS0oNWPqv1": {}, "8wERygd6tL1kbQor": {}, "2zMLnI2hix7owxbC": {}}, "defaultLanguage": "cGvVTlpHQyCuWmO2", "description": {"otF4nPGifvX7j6oX": "uTfljDfXbMjTKFBX", "pt0hfhwRavYpNIqJ": "J2VkYQS4aFK8qGOf", "zmwgN4iu0OQtFCwN": "qbWY8KJE9QoHajZg"}, "global": true, "goalValue": 0.06897281450014825, "hidden": true, "incremental": false, "lockedIcons": [{"slug": "yvikxUKYRJLpxsSC", "url": "kzQBnm9spFmdHeUs"}, {"slug": "uVr9CMCvQh4czi0W", "url": "izMD6oiP6YaQRTft"}, {"slug": "jbpLn62mjSp5BROL", "url": "GtYB3RUM324fbpU6"}], "name": {"bJY19vYXT1rgc0aS": "jjt1DH53oZI4kUro", "7ugmgmMvfRG7QLs0": "69816ZiX8EXEnXTm", "cjctlsza3Ls9zcdn": "oN5yAXGoDnuKkaiv"}, "statCode": "tZLVmvwm6S0R9lTH", "tags": ["mwyPbh5MV8BfBfWp", "vKq6ZBlwmBlkT1Qf", "W3D5uAHJ1mh8unin"], "unlockedIcons": [{"slug": "5TVYbcH4b4ImUTgB", "url": "03LOBMXnzQxNgrYc"}, {"slug": "ekbG6u2Oj7UzVEOa", "url": "GkqXHmQFR0DCTIHk"}, {"slug": "YO6tyyr7DP7JA4V0", "url": "qRvjVrnHautTsr7j"}]}'
"""

result, error = admin_update_achievement(
    body=body,
    achievement_code=achievement_code,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

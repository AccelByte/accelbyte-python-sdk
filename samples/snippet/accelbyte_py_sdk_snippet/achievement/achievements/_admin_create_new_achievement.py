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

Example: '{"achievementCode": "b745DDQexq9tFrEX", "customAttributes": {"yGvd6wCj16tvEtyV": {}, "q2NQ69ZETJWjLmjQ": {}, "OcO9531HXDL4URR8": {}}, "defaultLanguage": "O0jfHH2U1BKbqO3x", "description": {"ABF8vlOiZhUTqDeD": "W6VgNdj080VZPdNB", "iEOtDWi9gLRVPSsm": "zZZaZlhjBuXIBfT4", "uWVMz3SL9fAYF5k1": "KhpIt8SNj0JUVFu6"}, "global": false, "goalValue": 0.6507104552152462, "hidden": false, "incremental": false, "lockedIcons": [{"slug": "yZZbYIYWrGGHXqPN", "url": "ZfL0h63xK27c1fK9"}, {"slug": "QJaIZP0v0YmlYbFX", "url": "1EEY0cZh6M2PZKvL"}, {"slug": "3xnVWCzctZYpb8dT", "url": "k7TCXLucvKHxQWTd"}], "name": {"nkBv5J5Kh35hDQxn": "vTlVcQyOHJgpqNfX", "I04ChSq23iMSK8sg": "sLFsiAEU1ywVbZ0W", "kAxttvcpJ0OxLJEQ": "Yq9ssg1sa67VzV8V"}, "statCode": "WaREzsqMqLj6SzGg", "tags": ["h9mCmt7naSb3VLf0", "FV65MZO46of4bc9x", "6QosuH8ixompoWix"], "unlockedIcons": [{"slug": "6I6i3XuFVFFUHRzB", "url": "lREfZHYD9XhFxnMt"}, {"slug": "EzvWTfrSdZf8B47d", "url": "DvbY7Ig2SXVJeXCd"}, {"slug": "6vSKDjoyhfeRKDn9", "url": "fHc9dCeYNyT5hmAg"}]}'
"""

result, error = admin_create_new_achievement(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

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

Example: '{"achievementCode": "VDDgbQMiLKTmnlHE", "customAttributes": {"yDX7UAAVyAz1WWgf": {}, "0XwO87k74Pk6cQTn": {}, "OOK4zVNWYZRflvPQ": {}}, "defaultLanguage": "xiSdk9yY3foFic94", "description": {"WBwwhsAO8LtptolG": "1tfREGGJoAJsC8ki", "9b51HNASaWlyh1oa": "YBBgrk3uhTX1Vtvz", "SSngEW6oXUd7s94Y": "I3elznnwHhOnc2SM"}, "global": true, "goalValue": 0.062120408373877445, "hidden": false, "incremental": false, "lockedIcons": [{"slug": "iNqUQdZDvTZugeHx", "url": "gJlIrnJplWbZ2MfP"}, {"slug": "uyHEk9QEPgE97H1e", "url": "vdoemV5rQ7OubG8O"}, {"slug": "W7PJgqrur6HynFwm", "url": "rxojIRUjypeWbwul"}], "name": {"v16JgXM9jamu8nku": "VELn1mfFYSwjmspK", "tadzE120XsXWbtUY": "XpJhzmunXf5vB9PY", "9jYxN7TvhJmYNuYW": "1R3AM1KXw2gJN39Y"}, "statCode": "6sNH1ZVDkfiHVkHD", "tags": ["B39VzTmPN6oNPDcC", "vfVSDkdQgEPy9dTD", "MJQOJ42911M1ipLG"], "unlockedIcons": [{"slug": "mpuKUDGHK5Ukqt3X", "url": "Q8QgcsafknraBZ70"}, {"slug": "94g2ntdszZtLYxN6", "url": "fsWAmpx5tzfym1jS"}, {"slug": "7jAnwk44kMNerUQ6", "url": "f4oqyH1iHx0rIjO0"}]}'
"""

result, error = admin_create_new_achievement(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

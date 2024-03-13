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

Example: '{"achievementCode": "lU4cgJlLNeGHcQU5", "customAttributes": {"sFItEwQ0CAEK2E2A": {}, "MK6BwWlBUmbFdDIO": {}, "C8uKvAypvXcAdc1Z": {}}, "defaultLanguage": "ZIXBlcJsMEXITCHS", "description": {"kwKgqcHKg9IIExSx": "vPzXN1nEe1ku5ibm", "d8nxzba5T5pZOaYa": "KVtTGJIGxpPZCpOL", "xcCRFuDfbaUdbnqo": "rMtvN1Gd57ribTjV"}, "global": false, "goalValue": 0.608984684728258, "hidden": true, "incremental": true, "lockedIcons": [{"slug": "1UDdEshDYyIU59xQ", "url": "qOgj3hMcHAWJjALn"}, {"slug": "kCsULu363Kvm4qQC", "url": "Nbpo6viQFRXV4Z94"}, {"slug": "ldqy1J8OsZBPK2jz", "url": "glCIIgryMCOUGcUe"}], "name": {"X37VIh4ydIkHMr3R": "sfMURhyRs1dXfCeq", "WbQpebEsOsfSzYnq": "QOV9YT9Vr3Zr3fai", "v6SqucfPtPhKk7hy": "19eVgV5tNRZRFN4a"}, "statCode": "bKJicNnpmLw7cQUe", "tags": ["uR2IbfHjR506OY15", "uYQX1YbKtOZuwhDE", "FUU8SZTLtYrNkVIH"], "unlockedIcons": [{"slug": "CBaRc5dzQWUavuQ9", "url": "6jSbvkKi3Rabvc2p"}, {"slug": "KGR5xnw3x4iLsEUQ", "url": "t5yJrAo8hsfpeUrW"}, {"slug": "KYx0o4MWuqKdUKUU", "url": "bUKe1mLcYeLZe4qh"}]}'
"""

result, error = admin_create_new_achievement(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

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

Example: '{"achievementCode": "DGQC6AcN6PmNCCre", "customAttributes": {"0BtAkzyQYW1zFUbo": {}, "GwdpgwFaI5Ggxh1k": {}, "J1K1K704khOpgzDE": {}}, "defaultLanguage": "aLnhS2nzc8ZWg8gX", "description": {"mbhbmm4M2449wOIN": "q5DR6LG1a0HoG2r5", "ZadAM07CSwmChBHI": "0ONaRU2xtV9dtLXE", "XKjqhETlcZGyoz0V": "IrTvEZR7GmzKLlg9"}, "global": true, "goalValue": 0.3846857823229468, "hidden": true, "incremental": false, "lockedIcons": [{"slug": "fpqsR0IAxLwlu2Ap", "url": "ldUswHOBRBJD8rN2"}, {"slug": "mbLmMhML4GFq1B73", "url": "Y2KTYsTzZT5yELQx"}, {"slug": "kUqMdB66vQ9a0TwI", "url": "pDuwqQzeIi1Os9hW"}], "name": {"R2OD1aOF9qOzcnb9": "SWS44uu0rdzupnTt", "MViNq4ksoRRY4bI2": "mwUfQUrIlNHOyFya", "zIyzp2jP6wTLC5Vj": "iKRMiwUbFrFCAf55"}, "statCode": "YjTdXw4Lj4z7yXkJ", "tags": ["w9x7jlt0WhHbN7Ev", "K5XQcYdQ5VM8qc0M", "r3VP4CL85Kq9huxy"], "unlockedIcons": [{"slug": "2yZSXUrEDvOr7MNq", "url": "PlOx4HIGD4Dq2GtZ"}, {"slug": "ml49wTsVsYyOzRAD", "url": "4rb7akEPQSjzkujw"}, {"slug": "PwE7njHQ4H16IFAC", "url": "678Si2c7r4N35jFH"}]}'
"""

result, error = admin_create_new_achievement(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

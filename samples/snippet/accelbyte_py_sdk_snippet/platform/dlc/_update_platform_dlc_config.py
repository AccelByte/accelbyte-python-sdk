import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import update_platform_dlc_config
from accelbyte_py_sdk.api.platform.models import PlatformDLCConfigInfo
from accelbyte_py_sdk.api.platform.models import PlatformDLCConfigUpdate
from accelbyte_py_sdk.api.platform.models import ValidationErrorEntity

"""
body:
Definition: PlatformDLCConfigUpdate
data: List[PlatformDlcEntry]
Definition: List[PlatformDlcEntry]
    platform: str
    platform_dlc_id_map: Dict[str, str]

Example: '{"data": [{"platform": "EPICGAMES", "platformDlcIdMap": {"CWhP10y9jTsZX6Iu": "12DekIKZG4HWEEto", "TefEz8aNeoo5zIyA": "xYYnPwOoPVsMChA5", "D13YBlDqxHXAFChN": "F0wJ2psG7NrQiVFh"}}, {"platform": "XBOX", "platformDlcIdMap": {"8vvkwGqJyPz1gxht": "4TBdNpS2AIefq7m0", "8GDmd28eZ77Fv0FN": "uEqizGYDadfJteX2", "FJD2KBxHgzRckOx3": "SzCQ36n4AlnyYnTk"}}, {"platform": "XBOX", "platformDlcIdMap": {"hlICCOzsyLM7tgD1": "5xdCBjm0isIUblCb", "vkllcU6ER6Mh0KBA": "98H5sMlIdtJsTutB", "GTFnVPhYgLsoiieU": "dWdAE9kUd2D2HoiK"}}]}'
"""

result, error = update_platform_dlc_config(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

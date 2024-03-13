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

Example: '{"data": [{"platform": "STEAM", "platformDlcIdMap": {"XIkxr7KD53lw7E0f": "ROTfqBjaqCzoJ5ek", "bCpVVK1o2O724Z63": "CkPfiqwPi3tDDTeC", "WAAc4TJdlJJn8Kmr": "UfN0SMRPykkzKQg1"}}, {"platform": "PSN", "platformDlcIdMap": {"c4ktuCJop3ehjSIx": "awCBDEIBVvfEaoLn", "O35dPsLYNhwmPQMd": "fuJI61lf7kDzHHsB", "V445kF95UCdrKiTG": "Hin5ueWcI44w5psF"}}, {"platform": "OCULUS", "platformDlcIdMap": {"GfHCgnHcRuwrc0Yh": "mCr6vhrtxpPU210r", "53gmFfwahsmix1dq": "Yql6D5akouSor9Qs", "AHfad5KiLDnUDgfV": "TYysbaklBKc1A7Ju"}}]}'
"""

result, error = update_platform_dlc_config(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

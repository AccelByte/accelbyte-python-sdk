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

Example: '{"data": [{"platform": "STEAM", "platformDlcIdMap": {"hRHo116umU7pKT8V": "Nwa7u7ICR9KNbAn3", "kHhkOGoa0SkBnaJs": "mjuU0ltAnAkrbBsg", "bXbS3Bdcd7ICsKxT": "rZMynyKX4KnvML09"}}, {"platform": "OCULUS", "platformDlcIdMap": {"OlJE7IbaCpyxNjA5": "dojULtxTtbLu8sqp", "NEPmYyLEHgzhpeKo": "b0D0EaafJhGUHvEG", "HmGGheJuMxG9lNjF": "CseKfERyVMbf6VM8"}}, {"platform": "STEAM", "platformDlcIdMap": {"7CNBynlnNzfxgbiA": "C76jSbxGhPQiF68G", "1bKiCK92auoKTChv": "szd6mCeTyxdoJYBM", "a63coQdFLVeWAVWV": "qjO9PMmkeBUE55GK"}}]}'
"""

result, error = update_platform_dlc_config(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

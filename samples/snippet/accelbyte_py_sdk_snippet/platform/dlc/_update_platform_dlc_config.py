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

Example: '{"data": [{"platform": "EPICGAMES", "platformDlcIdMap": {"Tl499cqgk7FTlKQh": "JmlBZLLw3mFM7MtM", "EwwFgHX5M74CwKXZ": "33f5K7GOCIEV1IL5", "F4iHhkAEfzyoNpL2": "JWr6it0WpteM0DRC"}}, {"platform": "PSN", "platformDlcIdMap": {"EGfR5SLq2630SJSj": "1nDFvcL91qbPgz5d", "XIDMZdypmSUbGutH": "kHbtfXCebxh50VHN", "BHOUgybzejh2h6P2": "le7OxWdr3RgRLmGf"}}, {"platform": "PSN", "platformDlcIdMap": {"7EBqE7WFBR724w9g": "sDjcWxnUe64h6A2A", "0BJwCwEyVIhwHyKr": "sXJuDaElpzSb3bAf", "k2YlyYfLOyGBsQJQ": "0WuqZrc4NUEnqLsG"}}]}'
"""

result, error = update_platform_dlc_config(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

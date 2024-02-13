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

Example: '{"data": [{"platform": "OCULUS", "platformDlcIdMap": {"MMl7KTnfhMuXg0Yi": "FSMx6Uug6oUy9dMF", "f7rKMusEJ98klkb5": "E3km5cjFHYedYVMF", "YZ3aFOo1hcYpAZoH": "qTvr2KxsLE2BryU8"}}, {"platform": "EPICGAMES", "platformDlcIdMap": {"MGbXZnykVPoddMMa": "bhWpoKrhH3kabz6z", "21LDx7gn9i8fzG0T": "DSHA26efVvEoJTxs", "JFR7iQ5AwKb0Fm7q": "XRLbhIRqGTl27Si0"}}, {"platform": "XBOX", "platformDlcIdMap": {"4GHolPUUQKMdeNVq": "CrlUdbJb8IeeXFLZ", "bQPBrduJw2n2uBHk": "Qfsu2030IZM9g9bJ", "ldut9OXgbhbAZEqf": "1Hw9UxBijZCWMUjj"}}]}'
"""

result, error = update_platform_dlc_config(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

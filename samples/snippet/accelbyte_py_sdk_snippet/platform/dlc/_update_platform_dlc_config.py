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

Example: '{"data": [{"platform": "PSN", "platformDlcIdMap": {"waRxYRd4SrJjVc1S": "MaVufs9hk9o3K4X4", "XXu2kj7Eq6XPV2np": "b75QMovfsN1PddW3", "chTIhZZ2qOYhFOEq": "gHtWkIHJAsMdsFfo"}}, {"platform": "XBOX", "platformDlcIdMap": {"G8Lshrekch4aS7En": "Jo5ubDFHzY1ULIbQ", "CnPGCakWabvUOCiZ": "lXm6hPCdypDqwuy0", "df8MYw7fipSWdeNS": "osheWTirbR2ZIo3y"}}, {"platform": "PSN", "platformDlcIdMap": {"xpWONOICXMpxFBW4": "mB8l2O60VqHmWyPg", "EPmd26SiaKQZXZ1A": "4x4CNI1EREwNsxPn", "sZcALy19N4QBWxSv": "EujoR0h9oOXIMrvB"}}]}'
"""

result, error = update_platform_dlc_config(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

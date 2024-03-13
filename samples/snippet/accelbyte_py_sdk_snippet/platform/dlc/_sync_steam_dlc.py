import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import sync_steam_dlc
from accelbyte_py_sdk.api.platform.models import ErrorEntity
from accelbyte_py_sdk.api.platform.models import SteamDLCSyncRequest

"""
body:
Definition: SteamDLCSyncRequest
app_id: str
steam_id: str

Example: '{"appId": "WFKrkudUke3gvsOy", "steamId": "vmZF0d66j4P1nxGe"}'
"""

result, error = sync_steam_dlc(
    user_id=user_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

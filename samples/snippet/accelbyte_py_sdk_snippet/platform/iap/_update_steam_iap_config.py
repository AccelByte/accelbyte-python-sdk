import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import update_steam_iap_config
from accelbyte_py_sdk.api.platform.models import ErrorEntity
from accelbyte_py_sdk.api.platform.models import SteamIAPConfigInfo
from accelbyte_py_sdk.api.platform.models import SteamIAPConfigRequest

"""
body:
Definition: SteamIAPConfigRequest
app_id: str
publisher_authentication_key: str

Example: '{"appId": "uYbGJ7DwXty6jAI8", "publisherAuthenticationKey": "dce9S28sPAiFGHWl"}'
"""

result, error = update_steam_iap_config(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

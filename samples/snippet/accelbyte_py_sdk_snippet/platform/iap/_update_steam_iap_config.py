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

Example: '{"appId": "k94dg8SGNsuoDP0s", "publisherAuthenticationKey": "eZPQDodmWnlH3TzP"}'
"""

result, error = update_steam_iap_config(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

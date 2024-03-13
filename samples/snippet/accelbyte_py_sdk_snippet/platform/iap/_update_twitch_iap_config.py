import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import update_twitch_iap_config
from accelbyte_py_sdk.api.platform.models import TwitchIAPConfigInfo
from accelbyte_py_sdk.api.platform.models import TwitchIAPConfigRequest

"""
body:
Definition: TwitchIAPConfigRequest
client_id: str
client_secret: str
organization_id: str

Example: '{"clientId": "SVOv34m6J1Q1uWyo", "clientSecret": "77VomYvWRAiE60sN", "organizationId": "JFO8wa8qur8rs6yr"}'
"""

result, error = update_twitch_iap_config(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

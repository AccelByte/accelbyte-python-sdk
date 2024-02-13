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

Example: '{"clientId": "vlUwtWfyt1y3SAbS", "clientSecret": "t1BeEpQtW1KFnXf9", "organizationId": "HYCSUwp6TuIJ9c9d"}'
"""

result, error = update_twitch_iap_config(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

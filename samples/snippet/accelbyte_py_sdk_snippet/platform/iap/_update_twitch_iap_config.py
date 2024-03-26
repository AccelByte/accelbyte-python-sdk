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

Example: '{"clientId": "LJfXpOF4J7lGrGFZ", "clientSecret": "eWw9EZX8uFBytwu5", "organizationId": "IHBBpopnCCLoZ0oH"}'
"""

result, error = update_twitch_iap_config(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

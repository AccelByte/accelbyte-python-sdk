import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import sync_twitch_drops_entitlement_1
from accelbyte_py_sdk.api.platform.models import ErrorEntity
from accelbyte_py_sdk.api.platform.models import TwitchSyncRequest

"""
body:
Definition: TwitchSyncRequest
game_id: str
language: str
region: str

Example: '{"gameId": "QvsHEoIe85yZ7uuF", "language": "QJkY", "region": "hGFko5nxH7LpDFCy"}'
"""

result, error = sync_twitch_drops_entitlement_1(
    user_id=user_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

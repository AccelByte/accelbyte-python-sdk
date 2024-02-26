import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import sync_twitch_drops_entitlement
from accelbyte_py_sdk.api.platform.models import ErrorEntity
from accelbyte_py_sdk.api.platform.models import TwitchSyncRequest
from accelbyte_py_sdk.api.platform.models import TwitchSyncResult

"""
body:
Definition: TwitchSyncRequest
game_id: str
language: str
region: str

Example: '{"gameId": "nQQj1Wm76Cl6D0vT", "language": "OCd_BNBH", "region": "GFp4RHOJDzowJjeO"}'
"""

result, error = sync_twitch_drops_entitlement(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

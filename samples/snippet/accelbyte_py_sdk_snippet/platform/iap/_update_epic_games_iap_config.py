import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import update_epic_games_iap_config
from accelbyte_py_sdk.api.platform.models import EpicGamesIAPConfigInfo
from accelbyte_py_sdk.api.platform.models import EpicGamesIAPConfigRequest

"""
body:
Definition: EpicGamesIAPConfigRequest
sandbox_id: str

Example: '{"sandboxId": "Lh09BChu94ScG87l"}'
"""

result, error = update_epic_games_iap_config(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

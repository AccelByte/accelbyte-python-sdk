import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import sync_epic_games_inventory
from accelbyte_py_sdk.api.platform.models import EpicGamesReconcileRequest
from accelbyte_py_sdk.api.platform.models import EpicGamesReconcileResult
from accelbyte_py_sdk.api.platform.models import ErrorEntity

"""
body:
Definition: EpicGamesReconcileRequest
epic_games_jwt_token: str

Example: '{"epicGamesJwtToken": "N4VL5mqbvTxGuAJy"}'
"""

result, error = sync_epic_games_inventory(
    user_id=user_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.session import public_get_bulk_player_current_platform
from accelbyte_py_sdk.api.session.models import ApimodelsPlayersCurrentPlatformRequest
from accelbyte_py_sdk.api.session.models import ApimodelsPlayersCurrentPlatformResponse
from accelbyte_py_sdk.api.session.models import ResponseError

"""
body:
Definition: ApimodelsPlayersCurrentPlatformRequest
user_i_ds: List[str]

Example: '{"userIDs": ["akurrDXhE08yyL4y", "MZ5LHn9krcJsIbid", "jOxm6TdvrrEsFBSc"]}'
"""

result, error = public_get_bulk_player_current_platform(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

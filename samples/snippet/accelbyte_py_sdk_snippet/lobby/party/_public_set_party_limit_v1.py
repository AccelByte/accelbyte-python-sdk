import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.lobby import public_set_party_limit_v1
from accelbyte_py_sdk.api.lobby.models import ModelsPartyPUTLimitSizeRequest
from accelbyte_py_sdk.api.lobby.models import RestapiErrorResponseBody

"""
body:
Definition: ModelsPartyPUTLimitSizeRequest
limit: int

Example: '{"limit": 74}'
"""

result, error = public_set_party_limit_v1(
    body=body,
    party_id=party_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

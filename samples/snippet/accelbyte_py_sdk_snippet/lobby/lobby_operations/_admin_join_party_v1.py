import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.lobby import admin_join_party_v1
from accelbyte_py_sdk.api.lobby.models import RestapiErrorResponseBody

result, error = admin_join_party_v1(
    party_id=party_id,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

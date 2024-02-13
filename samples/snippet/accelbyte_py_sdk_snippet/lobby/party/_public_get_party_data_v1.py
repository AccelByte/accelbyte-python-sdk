import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.lobby import public_get_party_data_v1
from accelbyte_py_sdk.api.lobby.models import ModelsPartyData
from accelbyte_py_sdk.api.lobby.models import RestapiErrorResponseBody

result, error = public_get_party_data_v1(
    party_id=party_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.lobby import admin_get_third_party_config
from accelbyte_py_sdk.api.lobby.models import ModelsGetConfigResponse
from accelbyte_py_sdk.api.lobby.models import RestapiErrorResponseV1

result, error = admin_get_third_party_config(
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

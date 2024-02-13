import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.cloudsave import delete_game_binary_record_v1
from accelbyte_py_sdk.api.cloudsave.models import ModelsResponseError

result, error = delete_game_binary_record_v1(
    key=key,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

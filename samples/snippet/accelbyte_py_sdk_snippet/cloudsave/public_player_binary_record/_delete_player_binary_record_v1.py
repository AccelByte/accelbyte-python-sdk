import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.cloudsave import delete_player_binary_record_v1
from accelbyte_py_sdk.api.cloudsave.models import ModelsResponseError

result, error = delete_player_binary_record_v1(
    key=key,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

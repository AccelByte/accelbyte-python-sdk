import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.cloudsave import admin_get_player_record_handler_v1
from accelbyte_py_sdk.api.cloudsave.models import ModelsPlayerRecordResponse
from accelbyte_py_sdk.api.cloudsave.models import ModelsResponseError

result, error = admin_get_player_record_handler_v1(
    key=key,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

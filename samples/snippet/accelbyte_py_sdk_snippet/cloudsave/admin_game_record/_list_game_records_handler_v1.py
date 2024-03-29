import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.cloudsave import list_game_records_handler_v1
from accelbyte_py_sdk.api.cloudsave.models import ModelsListGameRecordKeysResponse
from accelbyte_py_sdk.api.cloudsave.models import ModelsResponseError

result, error = list_game_records_handler_v1(
    limit=limit,
    offset=offset,
    query=query,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

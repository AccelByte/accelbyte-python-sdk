import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.cloudsave import admin_retrieve_player_records
from accelbyte_py_sdk.api.cloudsave.models import ModelsListPlayerRecordKeysResponse
from accelbyte_py_sdk.api.cloudsave.models import ModelsResponseError

result, error = admin_retrieve_player_records(
    user_id=user_id,
    limit=limit,
    offset=offset,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

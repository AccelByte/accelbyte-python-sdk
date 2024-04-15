import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.cloudsave import admin_list_admin_game_record_v1
from accelbyte_py_sdk.api.cloudsave.models import ModelsListAdminGameRecordKeysResponse
from accelbyte_py_sdk.api.cloudsave.models import ModelsResponseError

result, error = admin_list_admin_game_record_v1(
    limit=limit,
    offset=offset,
    query=query,
    tags=tags,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

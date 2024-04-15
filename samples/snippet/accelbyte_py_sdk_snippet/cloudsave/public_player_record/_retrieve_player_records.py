import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.cloudsave import retrieve_player_records
from accelbyte_py_sdk.api.cloudsave.models import ModelsListPlayerRecordKeysResponse
from accelbyte_py_sdk.api.cloudsave.models import ModelsResponseError

result, error = retrieve_player_records(
    limit=limit,
    offset=offset,
    tags=tags,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.cloudsave import get_other_player_public_record_key_handler_v1
from accelbyte_py_sdk.api.cloudsave.models import ModelsListPlayerRecordKeysResponse
from accelbyte_py_sdk.api.cloudsave.models import ModelsResponseError

result, error = get_other_player_public_record_key_handler_v1(
    user_id=user_id,
    limit=limit,
    offset=offset,
    tags=tags,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.lobby import admin_delete_profanity_list
from accelbyte_py_sdk.api.lobby.models import RestapiErrorResponseBody

result, error = admin_delete_profanity_list(
    list_=list_,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

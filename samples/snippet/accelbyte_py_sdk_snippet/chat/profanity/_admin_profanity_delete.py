import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.chat import admin_profanity_delete
from accelbyte_py_sdk.api.chat.models import RestapiErrorResponseBody

result, error = admin_profanity_delete(
    id_=id_,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.matchmaking import public_get_messages
from accelbyte_py_sdk.api.matchmaking.models import LogAppMessageDeclaration
from accelbyte_py_sdk.api.matchmaking.models import ResponseError

result, error = public_get_messages(
    x_additional_headers=x_additional_headers,
)

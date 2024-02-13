import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.session import public_delete_player_attributes
from accelbyte_py_sdk.api.session.models import ResponseError

result, error = public_delete_player_attributes(
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

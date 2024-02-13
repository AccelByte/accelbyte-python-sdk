import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.session import admin_get_player_attributes
from accelbyte_py_sdk.api.session.models import ApimodelsPlayerAttributesResponseBody
from accelbyte_py_sdk.api.session.models import ResponseError

result, error = admin_get_player_attributes(
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.session import admin_query_player_attributes
from accelbyte_py_sdk.api.session.models import ApimodelsPlayerAttributesResponseBody
from accelbyte_py_sdk.api.session.models import ResponseError

result, error = admin_query_player_attributes(
    users=users,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

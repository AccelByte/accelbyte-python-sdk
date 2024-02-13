import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.ugc import admin_delete_type
from accelbyte_py_sdk.api.ugc.models import ResponseError

result, error = admin_delete_type(
    type_id=type_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

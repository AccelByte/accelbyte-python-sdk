import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.session import admin_delete_global_configuration
from accelbyte_py_sdk.api.session.models import ResponseError

result, error = admin_delete_global_configuration(
    x_additional_headers=x_additional_headers,
)

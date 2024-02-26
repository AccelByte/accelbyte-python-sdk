import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.cloudsave import admin_delete_tag_handler_v1
from accelbyte_py_sdk.api.cloudsave.models import ModelsResponseError

result, error = admin_delete_tag_handler_v1(
    tag=tag,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

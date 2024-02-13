import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.inventory import admin_delete_tag
from accelbyte_py_sdk.api.inventory.models import ApimodelsErrorResponse

result, error = admin_delete_tag(
    tag_name=tag_name,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

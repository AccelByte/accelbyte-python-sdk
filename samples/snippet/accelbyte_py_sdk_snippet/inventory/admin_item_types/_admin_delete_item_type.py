import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.inventory import admin_delete_item_type
from accelbyte_py_sdk.api.inventory.models import ApimodelsErrorResponse

result, error = admin_delete_item_type(
    item_type_name=item_type_name,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

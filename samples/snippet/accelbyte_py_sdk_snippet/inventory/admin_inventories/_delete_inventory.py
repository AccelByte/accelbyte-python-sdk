import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.inventory import delete_inventory
from accelbyte_py_sdk.api.inventory.models import ApimodelsDeleteInventoryReq
from accelbyte_py_sdk.api.inventory.models import ApimodelsErrorResponse

"""
body:
Definition: ApimodelsDeleteInventoryReq
message: str

Example: '{"message": "y6FXlogKFsS3H1wv"}'
"""

result, error = delete_inventory(
    body=body,
    inventory_id=inventory_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

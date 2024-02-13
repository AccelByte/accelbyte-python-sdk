import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.inventory import public_get_item
from accelbyte_py_sdk.api.inventory.models import ApimodelsErrorResponse
from accelbyte_py_sdk.api.inventory.models import ApimodelsItemResp

result, error = public_get_item(
    inventory_id=inventory_id,
    slot_id=slot_id,
    source_item_id=source_item_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

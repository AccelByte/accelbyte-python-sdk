import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.inventory import admin_save_item_to_inventory
from accelbyte_py_sdk.api.inventory.models import ApimodelsErrorResponse
from accelbyte_py_sdk.api.inventory.models import ApimodelsItemResp
from accelbyte_py_sdk.api.inventory.models import ApimodelsSaveItemToInventoryReq

"""
body:
Definition: ApimodelsSaveItemToInventoryReq
custom_attributes: Dict[str, Any]
qty: int
server_custom_attributes: Dict[str, Any]
slot_id: str
slot_used: int
source_item_id: str
tags: List[str]
type_: str

Example: '{"customAttributes": {"5miSAFKz84HDiAa2": {}, "h0VjrHt1B3BIX7cW": {}, "NROPzWVWDfuhafqc": {}}, "qty": 79, "serverCustomAttributes": {"55SFpU4dTcVd76PT": {}, "VwueVRppyqCheYVD": {}, "uV0USJZxTZVSeANX": {}}, "slotId": "Qz7HfKlhyFwMFFGo", "slotUsed": 33, "sourceItemId": "ZAfJtmteEhqUjp8n", "tags": ["2GkFEywiG3Cl0ORC", "5TlcGk8R87HyGoOF", "oQmSV1jBhVY1Ibbb"], "type": "i1QGRsoliWkeCKlF"}'
"""

result, error = admin_save_item_to_inventory(
    body=body,
    inventory_id=inventory_id,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

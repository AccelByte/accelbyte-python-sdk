import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.inventory import admin_save_item
from accelbyte_py_sdk.api.inventory.models import ApimodelsErrorResponse
from accelbyte_py_sdk.api.inventory.models import ApimodelsItemResp
from accelbyte_py_sdk.api.inventory.models import ApimodelsSaveItemReq

"""
body:
Definition: ApimodelsSaveItemReq
custom_attributes: Dict[str, Any]
inventory_configuration_code: str
qty: int
server_custom_attributes: Dict[str, Any]
slot_id: str
slot_used: int
source_item_id: str
tags: List[str]
type_: str

Example: '{"customAttributes": {"36wkVYMvsCNwu5nZ": {}, "ediwrr0iYVnPUjhB": {}, "4i8cVOkBv5Kf5kpd": {}}, "inventoryConfigurationCode": "BRHPDhLWwQVVUNGL", "qty": 100, "serverCustomAttributes": {"IpaPrSryia0pf9b0": {}, "r87YOW6N2xd7Qfg1": {}, "3KgdFypg6R7TUcXi": {}}, "slotId": "n7HqRN55HY0sC3Lj", "slotUsed": 82, "sourceItemId": "IZusjY0Kf6mPtkm4", "tags": ["mxeepa1FquVy3O7z", "XJsx7tkwFezVG13d", "7Qop7hQRaGbB5slO"], "type": "o5Fw4HquQKunrHZP"}'
"""

result, error = admin_save_item(
    body=body,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

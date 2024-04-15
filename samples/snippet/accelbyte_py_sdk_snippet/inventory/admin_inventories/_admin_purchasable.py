import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.inventory import admin_purchasable
from accelbyte_py_sdk.api.inventory.models import ApimodelsErrorResponse
from accelbyte_py_sdk.api.inventory.models import ApimodelsPurchaseValidationReq

"""
body:
Definition: ApimodelsPurchaseValidationReq
entitlement_type: str
inventory_config: ApimodelsInventoryConfig
Definition: ApimodelsInventoryConfig
    slot_used: int
item_id: str
item_type: str
items: List[ApimodelsPurchaseValidationItemReq]
Definition: List[ApimodelsPurchaseValidationItemReq]
    bundled_qty: int
    entitlement_type: str
    inventory_config: ApimodelsInventoryConfig
    Definition: ApimodelsInventoryConfig
        slot_used: int
    item_id: str
    item_type: str
    sku: str
    use_count: int
quantity: int
sku: str
use_count: int

Example: '{"entitlementType": "F6ilJ7Yk0x55pL71", "inventoryConfig": {"slotUsed": 48}, "itemId": "dcqZD3xI7A3K3jZU", "itemType": "yax3ukeeceIcOR7A", "items": [{"bundledQty": 14, "entitlementType": "fy16EH4SbDZETUob", "inventoryConfig": {"slotUsed": 54}, "itemId": "Z3NcYxd0rg0rk9mF", "itemType": "7yblx67aPFxT3AJx", "sku": "1VdrcSgZDSwVGocd", "useCount": 60}, {"bundledQty": 96, "entitlementType": "Ccm1gmZ1s5MzyUf0", "inventoryConfig": {"slotUsed": 90}, "itemId": "kA9sOyxQvVWqzpn5", "itemType": "gS0jwzdqJgldoic8", "sku": "NtuepaPp0MocvKVu", "useCount": 66}, {"bundledQty": 43, "entitlementType": "VNzKhiX2yyK9MtIr", "inventoryConfig": {"slotUsed": 9}, "itemId": "rrv1ce6hZC7ypDfd", "itemType": "4vClUMMelaGoC823", "sku": "2N6ZQ8syXcP0z4RH", "useCount": 38}], "quantity": 59, "sku": "8ri5VUFmKe15vrIt", "useCount": 56}'
"""

result, error = admin_purchasable(
    body=body,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

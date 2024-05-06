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

Example: '{"entitlementType": "q6OHNyJI2P3beqmY", "inventoryConfig": {"slotUsed": 5}, "itemId": "KlwLoetjJ9P1D006", "itemType": "VXrSnkc9RNDEpurS", "items": [{"bundledQty": 36, "entitlementType": "iNud0EUzmzOo8Byj", "inventoryConfig": {"slotUsed": 62}, "itemId": "hyrnvnbQeFANQAKc", "itemType": "1UxoZvXXTqA2JzLv", "sku": "gudpafytGcyIuKwX", "useCount": 37}, {"bundledQty": 93, "entitlementType": "7hTliZfWR0mAQ1om", "inventoryConfig": {"slotUsed": 77}, "itemId": "jWtxmRv0572PvZQc", "itemType": "udhAAIA94crjLaiW", "sku": "UgqUs4HgAWz1VAst", "useCount": 3}, {"bundledQty": 95, "entitlementType": "Kn06gSKlXdQ4YvUS", "inventoryConfig": {"slotUsed": 26}, "itemId": "9OSatvA637htSPnV", "itemType": "rhoM4MbIcm4PSy4M", "sku": "sxb8zlMgCvCo8ule", "useCount": 94}], "quantity": 89, "sku": "v6J2f5eMVewNGXt8", "useCount": 72}'
"""

result, error = admin_purchasable(
    body=body,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

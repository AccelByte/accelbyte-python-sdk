import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.inventory import public_bulk_update_my_items
from accelbyte_py_sdk.api.inventory.models import ApimodelsErrorResponse
from accelbyte_py_sdk.api.inventory.models import ApimodelsUpdateItemReq
from accelbyte_py_sdk.api.inventory.models import ApimodelsUpdateItemResp

"""
body:
Definition: List[ApimodelsUpdateItemReq]
custom_attributes: Dict[str, Any]
slot_id: str
source_item_id: str
tags: List[str]

Example: '[{"customAttributes": {"GFloV0j8rMrS5JLA": {}, "Ls1WwOR4JbhqPhuc": {}, "w6JOZIvkoIfXEAfs": {}}, "slotId": "4daMCWiB2Rn74QN3", "sourceItemId": "kFPc4U2BoItZIUid", "tags": ["aF7dEliEARz24XpJ", "L8nFUCjpQgfew4kQ", "eGXYoUBzZFCvFimR"]}, {"customAttributes": {"LZSKT3nwvAtEYrQz": {}, "K8tOgt04Wai1By4C": {}, "AK9eHq9ZEnZbJsrf": {}}, "slotId": "dhSwbA3VmtYrinTT", "sourceItemId": "nvmiAeBGNzZjcTQm", "tags": ["y7zreIV49TxMBLKG", "ao8zre60x6Ua2LvG", "itCCfNZ0AeIYj7eC"]}, {"customAttributes": {"fFPFrkGxR3c1HHLf": {}, "kir3h2f2Yak9t1KM": {}, "WWNKXR4bbWVkPRTe": {}}, "slotId": "g3FgmWmLKi1lP99s", "sourceItemId": "X8RyJm3X7zUbhGwW", "tags": ["i3i3WABUdaLN8lBj", "jPUh38nbacmgcVXs", "a8B5upUjpgLErGaT"]}]'
"""

result, error = public_bulk_update_my_items(
    body=body,
    inventory_id=inventory_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

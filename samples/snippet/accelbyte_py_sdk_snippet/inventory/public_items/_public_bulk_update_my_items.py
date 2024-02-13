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

Example: '[{"customAttributes": {"5XxiGnCeTjkj9Me7": {}, "N7TwpRxQMmmHNsu9": {}, "t4V9OejBhTxsUf0N": {}}, "slotId": "75Yp2EuWPTgsd78f", "sourceItemId": "pRVGOiGVsMsUlcdp", "tags": ["qj0aLQwDf4z0sin7", "jHCsWWKpAJxs3Pch", "NZMk3zaFKKqNG2fj"]}, {"customAttributes": {"gtnypHffjw97yLgE": {}, "hC6PIJpsOlUePTvf": {}, "Ss06UdhOYCjNrB0U": {}}, "slotId": "lmiY3as2xFy3O48l", "sourceItemId": "9J3RsBbS4rRUirOl", "tags": ["cro8taXU1WnbHIVO", "Vz6K0ZF8le1v3p6K", "uBT3ToLRL4LD66yB"]}, {"customAttributes": {"729O0vsbh1qWX6KT": {}, "qrpeWuOYmeE6BJr2": {}, "FfKVzZlAjcypBujc": {}}, "slotId": "sbTU7XpXSLhjKMD5", "sourceItemId": "DBCVcaZjBY1IBaYd", "tags": ["9YqXuG36RFOvNa4t", "dM7huQu4RHNxgQrh", "3WC07HcJY29oxCJ2"]}]'
"""

result, error = public_bulk_update_my_items(
    body=body,
    inventory_id=inventory_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

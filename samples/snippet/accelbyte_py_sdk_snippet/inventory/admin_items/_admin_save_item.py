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

Example: '{"customAttributes": {"PT8z8sVmpavYQY02": {}, "ZiUGnpasgRHtkAsj": {}, "lI3YpV7Geex6Vo3u": {}}, "inventoryConfigurationCode": "cYY5RqRRJGQEsUAc", "qty": 50, "serverCustomAttributes": {"SriPGn0dpxkNQrTs": {}, "0wbBuWlL1FVzZGxC": {}, "WsPaLRHFtDJ3Lqzn": {}}, "slotId": "EEmUbmixo4Lget2i", "slotUsed": 89, "sourceItemId": "bud3GlwoGATboFjN", "tags": ["tvifqRjck8Tu9P8U", "UOEKtN06KWA9ESqx", "meicjGJjYQ47YIu1"], "type": "nGVIk3m8Htf5vMK6"}'
"""

result, error = admin_save_item(
    body=body,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

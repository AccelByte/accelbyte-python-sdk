import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.inventory import admin_bulk_update_my_items
from accelbyte_py_sdk.api.inventory.models import ApimodelsAdminUpdateItemReq
from accelbyte_py_sdk.api.inventory.models import ApimodelsErrorResponse
from accelbyte_py_sdk.api.inventory.models import ApimodelsUpdateItemResp

"""
body:
Definition: List[ApimodelsAdminUpdateItemReq]
custom_attributes: Dict[str, Any]
server_custom_attributes: Dict[str, Any]
slot_id: str
source_item_id: str
tags: List[str]
type_: str

Example: '[{"customAttributes": {"GISwaoyKF3kQt8Xl": {}, "ugQwMEU46aiZqMFL": {}, "PcPJArxYMwFboLGO": {}}, "serverCustomAttributes": {"Hz3UKqFmc2FJLrW4": {}, "OFpIvzO07ttwuhPr": {}, "i3gyTHApVWxS6C4O": {}}, "slotId": "m20gResVZ25u5VxE", "sourceItemId": "NFuCF4ZZGA85TUgA", "tags": ["9IttmGdlxnkApKgV", "TPqaZXFPZLNeJH0k", "JdoG54UT3JWwjuxW"], "type": "9gOz0WvwhraCBGLl"}, {"customAttributes": {"rL8G9qzefyPyoFiG": {}, "r1AGFoH4Ca2CFqH7": {}, "fc1Ra1kbc0vNzdF4": {}}, "serverCustomAttributes": {"O1RPVQFGjamNkcYA": {}, "YkLx3znhzgMM6nlb": {}, "xpVzL74UUXSNQmjV": {}}, "slotId": "2GEff62SECVePTUE", "sourceItemId": "wonKZEMt0fzKrlBO", "tags": ["Br5u26xHHXphZALv", "02vpD5BbTklJ60Hy", "aedGu2Mvkv3BkDfS"], "type": "uiNBKwglSJfw1MXJ"}, {"customAttributes": {"nxRK8InBGQMayZnn": {}, "SKc0kW4mJhOcYCyE": {}, "VxjRILrv6BgRFHuc": {}}, "serverCustomAttributes": {"wbLxGYnnIkYeSUny": {}, "RjMv2dgO7PXXNx4p": {}, "mvdnZe29NOeDVApX": {}}, "slotId": "idINCKaEgSeZMyAr", "sourceItemId": "rWuU0fNxgvMS24Jq", "tags": ["YMXdlXqWNxsjSmZE", "h4fpusXJf720vBWO", "yEfcrMWT2e21P7lY"], "type": "QxVc9Mkv1pQDHurI"}]'
"""

result, error = admin_bulk_update_my_items(
    body=body,
    inventory_id=inventory_id,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

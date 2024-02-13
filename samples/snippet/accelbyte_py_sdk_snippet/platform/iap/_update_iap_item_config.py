import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import update_iap_item_config
from accelbyte_py_sdk.api.platform.models import ErrorEntity
from accelbyte_py_sdk.api.platform.models import IAPItemConfigInfo
from accelbyte_py_sdk.api.platform.models import IAPItemConfigUpdate
from accelbyte_py_sdk.api.platform.models import ValidationErrorEntity

"""
body:
Definition: IAPItemConfigUpdate
data: List[IAPItemEntry]
Definition: List[IAPItemEntry]
    item_identity: str
    item_identity_type: str
    platform_product_id_map: Dict[str, str]

Example: '{"data": [{"itemIdentity": "z9R1CzGr3EmHa1io", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"tb9io5EA8iN0Ern0": "imsdhGSyTyjY6LDY", "Ufe6uPvIdKcmF4nQ": "6HH73P2ymEqkjR64", "aSyy2bQ30Kfkjieq": "aQDNQrzAXjNkm9DS"}}, {"itemIdentity": "Za8IPtmzW53cSjIr", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"4PxRGZiuQ2zDl9eI": "UXgZ6q47BYKI3I2A", "DkwQzvfKV4Rourzw": "K2rrLfH7SB6f26gG", "XBrdqpnziWqu0Pzq": "AeedfQ9WXygGh3A9"}}, {"itemIdentity": "u77i0xRVVQRXGE1S", "itemIdentityType": "ITEM_ID", "platformProductIdMap": {"HglojJ3vFXq2MavT": "DUHO3Z9Cr3qLPPAT", "iY1nO5kvZs3vOi4I": "R4jsNod9ZQVkNalX", "Nr8v1Pm14ADZ0XbQ": "mxcO1D5qt4P2r0G9"}}]}'
"""

result, error = update_iap_item_config(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

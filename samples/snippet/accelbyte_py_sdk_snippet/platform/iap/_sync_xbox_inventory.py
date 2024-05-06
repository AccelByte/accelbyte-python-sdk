import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import sync_xbox_inventory
from accelbyte_py_sdk.api.platform.models import ErrorEntity
from accelbyte_py_sdk.api.platform.models import XblReconcileRequest
from accelbyte_py_sdk.api.platform.models import XblReconcileResult

"""
body:
Definition: XblReconcileRequest
currency_code: str
price: float
product_id: str
xsts_token: str

Example: '{"currencyCode": "PRGl8rgZu1kKsNwa", "price": 0.4291435936786162, "productId": "kVnpR2VPNZ1j60JY", "xstsToken": "g6UaANBVrYymfJfm"}'
"""

result, error = sync_xbox_inventory(
    user_id=user_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

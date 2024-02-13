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

Example: '{"currencyCode": "RwvUHbOTc9dXYxae", "price": 0.3711221276464768, "productId": "ezvlX0BL89qTl5Oy", "xstsToken": "rE7iGRzjNo7OUpY9"}'
"""

result, error = sync_xbox_inventory(
    user_id=user_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

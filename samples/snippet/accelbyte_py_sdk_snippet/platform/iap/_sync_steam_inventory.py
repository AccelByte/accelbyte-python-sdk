import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import sync_steam_inventory
from accelbyte_py_sdk.api.platform.models import ErrorEntity
from accelbyte_py_sdk.api.platform.models import SteamSyncRequest

"""
body:
Definition: SteamSyncRequest
app_id: str
currency_code: str
language: str
price: float
product_id: str
region: str
steam_id: str

Example: '{"appId": "MegXppjEwvBjqsbf", "currencyCode": "NPJGWwVFfzWI6otO", "language": "Zn-pGBv_702", "price": 0.11814287524024147, "productId": "uocoMsudfEclbHKU", "region": "1X8hw5vpTAfMxCG8", "steamId": "y6iYKs5ZxwYPLlqa"}'
"""

result, error = sync_steam_inventory(
    user_id=user_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

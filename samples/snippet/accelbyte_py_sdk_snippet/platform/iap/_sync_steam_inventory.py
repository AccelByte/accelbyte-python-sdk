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

Example: '{"appId": "NbGz6WMNUdVVKlDr", "currencyCode": "oiA0vpiMJVGvZdiD", "language": "VjTH_WPMy", "price": 0.3492472117351173, "productId": "Chrehhvqn5xbP9A8", "region": "KY3qmb90igeWWv4M", "steamId": "F97AcbrdNgfa8m9K"}'
"""

result, error = sync_steam_inventory(
    user_id=user_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

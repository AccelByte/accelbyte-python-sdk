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

Example: '{"appId": "aJN2mXeHCekvhjet", "currencyCode": "gVNZEuSYafRxwwJs", "language": "VZqq_iOUT", "price": 0.21945664471213466, "productId": "nZbXNbRWOQzFz4ZB", "region": "X8l3HGaO5DbOCTOM", "steamId": "UsdATTvAH15V6vJr"}'
"""

result, error = sync_steam_inventory(
    user_id=user_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

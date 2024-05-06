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

Example: '{"appId": "XQXwEmOONjXQNPzk", "currencyCode": "TZu2qelqiH2CCJlw", "language": "qMe-CMwM", "price": 0.44907665755234105, "productId": "8E13Q9mHQucXHsoW", "region": "FOGsN1vDNM2ETlPi", "steamId": "xYp4YFhral2GAGSb"}'
"""

result, error = sync_steam_inventory(
    user_id=user_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

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

Example: '{"appId": "Jq2hKhJf7LtOfgai", "currencyCode": "6ck7DA3zDO9Rya9t", "language": "ZM_561", "price": 0.7816314701586728, "productId": "NHTwxUOR9VHT5ueS", "region": "JXgTiDq3sP7bpAit", "steamId": "5AuqCCZ353LDrxmB"}'
"""

result, error = sync_steam_inventory(
    user_id=user_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

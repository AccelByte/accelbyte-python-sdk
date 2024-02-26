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

Example: '{"appId": "X3fYNljV4u84dkwN", "currencyCode": "HwxAjWshN6ZSnjDt", "language": "gRN-ceSQ", "price": 0.2018771512725045, "productId": "r7DttLqmXnuLS9Yb", "region": "SjYhU75cxbKoKj7r", "steamId": "mWuI76HYdmd8pDeb"}'
"""

result, error = sync_steam_inventory(
    user_id=user_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

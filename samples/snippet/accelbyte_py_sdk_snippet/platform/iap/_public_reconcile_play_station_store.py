import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import public_reconcile_play_station_store
from accelbyte_py_sdk.api.platform.models import ErrorEntity
from accelbyte_py_sdk.api.platform.models import PlayStationReconcileRequest
from accelbyte_py_sdk.api.platform.models import PlayStationReconcileResult

"""
body:
Definition: PlayStationReconcileRequest
currency_code: str
price: float
product_id: str
service_label: int

Example: '{"currencyCode": "ivnjF6NZv2HvGHIm", "price": 0.21366032966962645, "productId": "loiZyuOkwvp5v2Co", "serviceLabel": 37}'
"""

result, error = public_reconcile_play_station_store(
    user_id=user_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

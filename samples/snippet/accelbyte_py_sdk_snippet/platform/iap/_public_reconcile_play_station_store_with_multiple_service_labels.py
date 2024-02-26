import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import (
    public_reconcile_play_station_store_with_multiple_service_labels,
)
from accelbyte_py_sdk.api.platform.models import ErrorEntity
from accelbyte_py_sdk.api.platform.models import (
    PlayStationMultiServiceLabelsReconcileRequest,
)
from accelbyte_py_sdk.api.platform.models import PlayStationReconcileResult

"""
body:
Definition: PlayStationMultiServiceLabelsReconcileRequest
currency_code: str
price: float
product_id: str
service_labels: List[int]

Example: '{"currencyCode": "Rn0xc2aBiX9aIZJK", "price": 0.18109193718738437, "productId": "kOrsXaxy9V1wwbdZ", "serviceLabels": [19, 61, 79]}'
"""

result, error = public_reconcile_play_station_store_with_multiple_service_labels(
    user_id=user_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

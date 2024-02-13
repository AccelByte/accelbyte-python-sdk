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

Example: '{"currencyCode": "U2npQDGET4yeBNLF", "price": 0.7770502209543534, "productId": "xC4llMB9vR6liIQC", "serviceLabels": [3, 58, 27]}'
"""

result, error = public_reconcile_play_station_store_with_multiple_service_labels(
    user_id=user_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

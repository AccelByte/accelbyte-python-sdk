import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import (
    public_sync_psn_dlc_inventory_with_multiple_service_labels,
)
from accelbyte_py_sdk.api.platform.models import ErrorEntity
from accelbyte_py_sdk.api.platform.models import (
    PlayStationDLCSyncMultiServiceLabelsRequest,
)

"""
body:
Definition: PlayStationDLCSyncMultiServiceLabelsRequest
service_labels: List[int]

Example: '{"serviceLabels": [66, 44, 86]}'
"""

result, error = public_sync_psn_dlc_inventory_with_multiple_service_labels(
    user_id=user_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import public_sync_psn_dlc_inventory
from accelbyte_py_sdk.api.platform.models import ErrorEntity
from accelbyte_py_sdk.api.platform.models import PlayStationDLCSyncRequest

"""
body:
Definition: PlayStationDLCSyncRequest
service_label: int

Example: '{"serviceLabel": 4}'
"""

result, error = public_sync_psn_dlc_inventory(
    user_id=user_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.social import update_namespace_slot_config
from accelbyte_py_sdk.api.social.models import NamespaceSlotConfigInfo
from accelbyte_py_sdk.api.social.models import SlotConfigUpdate

"""
body:
Definition: SlotConfigUpdate
max_slot_size: int
max_slots: int

Example: '{"maxSlotSize": 97, "maxSlots": 4}'
"""

result, error = update_namespace_slot_config(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

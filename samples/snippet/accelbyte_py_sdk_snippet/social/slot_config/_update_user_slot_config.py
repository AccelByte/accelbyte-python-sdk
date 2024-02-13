import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.social import update_user_slot_config
from accelbyte_py_sdk.api.social.models import SlotConfigUpdate
from accelbyte_py_sdk.api.social.models import UserSlotConfigInfo

"""
body:
Definition: SlotConfigUpdate
max_slot_size: int
max_slots: int

Example: '{"maxSlotSize": 80, "maxSlots": 61}'
"""

result, error = update_user_slot_config(
    user_id=user_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

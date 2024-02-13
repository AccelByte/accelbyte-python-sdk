import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.social import public_update_user_namespace_slot_metadata
from accelbyte_py_sdk.api.social.models import ErrorEntity
from accelbyte_py_sdk.api.social.models import SlotInfo
from accelbyte_py_sdk.api.social.models import SlotMetadataUpdate

"""
body:
Definition: SlotMetadataUpdate
custom_attribute: str
label: str
tags: List[str]

Example: '{"customAttribute": "SJKwk0COGRiNt7yM", "label": "MMDxBhJFWIUDn2HF", "tags": ["NXvSixpHzQI1NaAJ", "a93iMv67kQyH34Pb", "WzbDa3qvbz6QQgkn"]}'
"""

result, error = public_update_user_namespace_slot_metadata(
    slot_id=slot_id,
    user_id=user_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

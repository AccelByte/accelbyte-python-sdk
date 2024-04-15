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

Example: '{"customAttribute": "bJNWTyzkpcx3lnwH", "label": "7yTSc2Y9er6x65Ns", "tags": ["YYviGeYBUf7beRWF", "GN58p1n0cXlJK1b6", "SzzG6FvJeGNYkPul"]}'
"""

result, error = public_update_user_namespace_slot_metadata(
    slot_id=slot_id,
    user_id=user_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

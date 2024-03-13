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

Example: '{"customAttribute": "0pF2HQpuJB8o2L35", "label": "tv5PX0PY6x1Un2KP", "tags": ["HjiRGRbBCig3Xe8P", "hV9VktUO4uT1L7Ev", "nC4AZcrwSVmxoJET"]}'
"""

result, error = public_update_user_namespace_slot_metadata(
    slot_id=slot_id,
    user_id=user_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

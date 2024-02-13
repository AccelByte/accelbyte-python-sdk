import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.social import public_update_user_namespace_slot
from accelbyte_py_sdk.api.social.models import ErrorEntity
from accelbyte_py_sdk.api.social.models import SlotInfo

result, error = public_update_user_namespace_slot(
    slot_id=slot_id,
    user_id=user_id,
    checksum=checksum,
    custom_attribute=custom_attribute,
    file=file,
    label=label,
    tags=tags,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

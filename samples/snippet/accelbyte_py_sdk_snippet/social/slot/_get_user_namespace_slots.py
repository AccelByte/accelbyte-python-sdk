import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.social import get_user_namespace_slots
from accelbyte_py_sdk.api.social.models import SlotInfo

result, error = get_user_namespace_slots(
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

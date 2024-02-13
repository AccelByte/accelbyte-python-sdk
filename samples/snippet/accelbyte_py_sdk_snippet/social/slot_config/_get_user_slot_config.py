import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.social import get_user_slot_config
from accelbyte_py_sdk.api.social.models import UserSlotConfigInfo

result, error = get_user_slot_config(
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

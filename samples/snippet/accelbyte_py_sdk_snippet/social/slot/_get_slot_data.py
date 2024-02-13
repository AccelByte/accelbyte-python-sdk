import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.social import get_slot_data
from accelbyte_py_sdk.api.social.models import ErrorEntity

result, error = get_slot_data(
    slot_id=slot_id,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

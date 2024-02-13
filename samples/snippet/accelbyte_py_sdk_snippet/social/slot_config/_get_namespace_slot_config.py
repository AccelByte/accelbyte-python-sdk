import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.social import get_namespace_slot_config
from accelbyte_py_sdk.api.social.models import NamespaceSlotConfigInfo

result, error = get_namespace_slot_config(
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

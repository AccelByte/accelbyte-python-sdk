import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import get_key_group
from accelbyte_py_sdk.api.platform.models import ErrorEntity
from accelbyte_py_sdk.api.platform.models import KeyGroupInfo

result, error = get_key_group(
    key_group_id=key_group_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

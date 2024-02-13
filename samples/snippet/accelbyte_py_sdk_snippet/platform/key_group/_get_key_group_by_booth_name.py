import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import get_key_group_by_booth_name
from accelbyte_py_sdk.api.platform.models import ErrorEntity
from accelbyte_py_sdk.api.platform.models import KeyGroupInfo

result, error = get_key_group_by_booth_name(
    booth_name=booth_name,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

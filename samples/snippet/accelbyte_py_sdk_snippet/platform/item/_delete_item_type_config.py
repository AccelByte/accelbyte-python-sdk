import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import delete_item_type_config
from accelbyte_py_sdk.api.platform.models import ErrorEntity

result, error = delete_item_type_config(
    id_=id_,
    x_additional_headers=x_additional_headers,
)

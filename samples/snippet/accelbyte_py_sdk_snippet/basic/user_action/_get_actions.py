import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.basic import get_actions
from accelbyte_py_sdk.api.basic.models import Action
from accelbyte_py_sdk.api.basic.models import ErrorEntity

result, error = get_actions(
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

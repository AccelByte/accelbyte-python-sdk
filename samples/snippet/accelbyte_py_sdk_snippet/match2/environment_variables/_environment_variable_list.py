import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.match2 import environment_variable_list
from accelbyte_py_sdk.api.match2.models import ApiListEnvironmentVariablesResponse
from accelbyte_py_sdk.api.match2.models import ResponseError

result, error = environment_variable_list(
    x_additional_headers=x_additional_headers,
)

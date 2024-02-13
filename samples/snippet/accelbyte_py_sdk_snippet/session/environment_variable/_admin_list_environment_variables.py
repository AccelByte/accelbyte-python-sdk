import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.session import admin_list_environment_variables
from accelbyte_py_sdk.api.session.models import ApimodelsEnvironmentVariableListResponse
from accelbyte_py_sdk.api.session.models import ResponseError

result, error = admin_list_environment_variables(
    x_additional_headers=x_additional_headers,
)

import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.ams import auth_check
from accelbyte_py_sdk.api.ams.models import ResponseErrorResponse

result, error = auth_check(
    x_additional_headers=x_additional_headers,
)

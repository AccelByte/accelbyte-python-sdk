import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.basic import public_get_time
from accelbyte_py_sdk.api.basic.models import RetrieveTimeResponse

result, error = public_get_time(
    x_additional_headers=x_additional_headers,
)

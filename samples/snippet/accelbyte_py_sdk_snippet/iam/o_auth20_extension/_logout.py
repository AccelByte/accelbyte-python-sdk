import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import logout

result, error = logout(
    x_additional_headers=x_additional_headers,
)

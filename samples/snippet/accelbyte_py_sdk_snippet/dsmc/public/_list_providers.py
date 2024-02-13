import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.dsmc import list_providers

result, error = list_providers(
    x_additional_headers=x_additional_headers,
)

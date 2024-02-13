import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.dsmc import list_providers_by_region

result, error = list_providers_by_region(
    region=region,
    x_additional_headers=x_additional_headers,
)

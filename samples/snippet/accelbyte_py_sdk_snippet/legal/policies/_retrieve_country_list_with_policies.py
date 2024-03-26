import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.legal import retrieve_country_list_with_policies

result, error = retrieve_country_list_with_policies(
    x_additional_headers=x_additional_headers,
)

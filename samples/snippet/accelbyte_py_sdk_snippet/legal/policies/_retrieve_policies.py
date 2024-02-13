import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.legal import retrieve_policies
from accelbyte_py_sdk.api.legal.models import RetrievePolicyResponse

result, error = retrieve_policies(
    country_code=country_code,
    x_additional_headers=x_additional_headers,
)

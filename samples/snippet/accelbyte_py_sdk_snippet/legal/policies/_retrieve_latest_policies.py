import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.legal import retrieve_latest_policies
from accelbyte_py_sdk.api.legal.models import RetrievePolicyPublicResponse

result, error = retrieve_latest_policies(
    country_code=country_code,
    default_on_empty=default_on_empty,
    policy_type=policy_type,
    tags=tags,
    x_additional_headers=x_additional_headers,
)

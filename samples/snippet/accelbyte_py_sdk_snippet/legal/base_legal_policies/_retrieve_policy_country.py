import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.legal import retrieve_policy_country
from accelbyte_py_sdk.api.legal.models import ErrorEntity
from accelbyte_py_sdk.api.legal.models import RetrievePolicyResponse

result, error = retrieve_policy_country(
    base_policy_id=base_policy_id,
    country_code=country_code,
    x_additional_headers=x_additional_headers,
)

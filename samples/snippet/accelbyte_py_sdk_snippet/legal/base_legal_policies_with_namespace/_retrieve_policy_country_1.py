import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.legal import retrieve_policy_country_1
from accelbyte_py_sdk.api.legal.models import ErrorEntity
from accelbyte_py_sdk.api.legal.models import RetrievePolicyResponse

result, error = retrieve_policy_country_1(
    base_policy_id=base_policy_id,
    country_code=country_code,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

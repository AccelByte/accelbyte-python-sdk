import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.legal import retrieve_all_policy_types_1
from accelbyte_py_sdk.api.legal.models import RetrievePolicyTypeResponse

result, error = retrieve_all_policy_types_1(
    limit=limit,
    offset=offset,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

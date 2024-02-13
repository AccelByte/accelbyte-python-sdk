import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.legal import retrieve_single_policy_1
from accelbyte_py_sdk.api.legal.models import ErrorEntity
from accelbyte_py_sdk.api.legal.models import RetrieveBasePolicyResponse

result, error = retrieve_single_policy_1(
    base_policy_id=base_policy_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

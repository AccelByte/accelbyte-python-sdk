import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.legal import retrieve_single_policy_version_1
from accelbyte_py_sdk.api.legal.models import ErrorEntity
from accelbyte_py_sdk.api.legal.models import RetrievePolicyVersionResponse

result, error = retrieve_single_policy_version_1(
    policy_id=policy_id,
    version_id=version_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

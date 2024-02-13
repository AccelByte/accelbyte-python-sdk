import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.legal import set_default_policy_3
from accelbyte_py_sdk.api.legal.models import ErrorEntity

result, error = set_default_policy_3(
    policy_id=policy_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

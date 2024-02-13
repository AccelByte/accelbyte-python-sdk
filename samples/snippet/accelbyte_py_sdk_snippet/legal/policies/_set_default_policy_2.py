import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.legal import set_default_policy_2
from accelbyte_py_sdk.api.legal.models import ErrorEntity

result, error = set_default_policy_2(
    policy_id=policy_id,
    x_additional_headers=x_additional_headers,
)

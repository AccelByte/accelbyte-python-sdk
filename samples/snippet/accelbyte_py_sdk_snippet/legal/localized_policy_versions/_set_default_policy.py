import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.legal import set_default_policy
from accelbyte_py_sdk.api.legal.models import ErrorEntity

result, error = set_default_policy(
    localized_policy_version_id=localized_policy_version_id,
    x_additional_headers=x_additional_headers,
)

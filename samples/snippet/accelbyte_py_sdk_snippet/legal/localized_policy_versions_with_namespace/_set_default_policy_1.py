import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.legal import set_default_policy_1

result, error = set_default_policy_1(
    localized_policy_version_id=localized_policy_version_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

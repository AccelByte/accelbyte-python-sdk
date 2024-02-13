import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.legal import accept_versioned_policy
from accelbyte_py_sdk.api.legal.models import ErrorEntity

result, error = accept_versioned_policy(
    localized_policy_version_id=localized_policy_version_id,
    x_additional_headers=x_additional_headers,
)

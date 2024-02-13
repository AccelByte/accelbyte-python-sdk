import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.legal import publish_policy_version_1
from accelbyte_py_sdk.api.legal.models import ErrorEntity

result, error = publish_policy_version_1(
    policy_version_id=policy_version_id,
    should_notify=should_notify,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

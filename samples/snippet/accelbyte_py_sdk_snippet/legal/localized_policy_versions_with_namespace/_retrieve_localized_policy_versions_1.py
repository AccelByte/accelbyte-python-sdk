import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.legal import retrieve_localized_policy_versions_1
from accelbyte_py_sdk.api.legal.models import RetrieveLocalizedPolicyVersionResponse

result, error = retrieve_localized_policy_versions_1(
    policy_version_id=policy_version_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

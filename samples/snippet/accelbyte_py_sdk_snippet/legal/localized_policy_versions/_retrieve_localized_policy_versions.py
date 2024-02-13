import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.legal import retrieve_localized_policy_versions
from accelbyte_py_sdk.api.legal.models import RetrieveLocalizedPolicyVersionResponse

result, error = retrieve_localized_policy_versions(
    policy_version_id=policy_version_id,
    x_additional_headers=x_additional_headers,
)

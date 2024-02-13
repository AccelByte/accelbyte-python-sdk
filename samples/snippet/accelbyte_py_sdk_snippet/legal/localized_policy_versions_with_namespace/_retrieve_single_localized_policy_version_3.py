import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.legal import retrieve_single_localized_policy_version_3
from accelbyte_py_sdk.api.legal.models import ErrorEntity
from accelbyte_py_sdk.api.legal.models import (
    RetrieveLocalizedPolicyVersionPublicResponse,
)

result, error = retrieve_single_localized_policy_version_3(
    localized_policy_version_id=localized_policy_version_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

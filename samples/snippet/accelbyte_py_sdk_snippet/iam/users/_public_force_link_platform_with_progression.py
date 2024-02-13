import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import public_force_link_platform_with_progression
from accelbyte_py_sdk.api.iam.models import (
    ModelLinkPlatformAccountWithProgressionRequest,
)
from accelbyte_py_sdk.api.iam.models import RestErrorResponse

"""
body:
Definition: ModelLinkPlatformAccountWithProgressionRequest
chosen_namespaces: List[str]
request_id: str

Example: '{"chosenNamespaces": ["Mdc1eGx4lUMHIKKe", "H05CDKvvZtrBK2Vj", "KKcYXmJtQqIcLsRu"], "requestId": "LKYfcWgUadP55rZh"}'
"""

result, error = public_force_link_platform_with_progression(
    body=body,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

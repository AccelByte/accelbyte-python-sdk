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

Example: '{"chosenNamespaces": ["HWvR57Tqj073OuL3", "rFqkZu7ZQpsEtZyQ", "hJm0y4vKS7wZdqtY"], "requestId": "e77mG52mGI2sP6Hi"}'
"""

result, error = public_force_link_platform_with_progression(
    body=body,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

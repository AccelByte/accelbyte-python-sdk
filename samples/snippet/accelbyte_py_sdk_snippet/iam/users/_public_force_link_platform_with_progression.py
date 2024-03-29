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

Example: '{"chosenNamespaces": ["0pUjx1uRIUAtDrnA", "x3oQaJ0L6YdT5Zh8", "QgDDyVhFcqGON59S"], "requestId": "sfQahLctYmgg1rsU"}'
"""

result, error = public_force_link_platform_with_progression(
    body=body,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

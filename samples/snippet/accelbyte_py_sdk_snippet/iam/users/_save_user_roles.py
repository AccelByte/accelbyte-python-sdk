import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import save_user_roles
from accelbyte_py_sdk.api.iam.models import RestErrorResponse

"""
body:
Definition: List[str]

Example: '["4DmG8VZGXs1kDDOE", "u0CbG2p6400gp3FD", "5WDhXbG8L1ZPW12H"]'
"""

result, error = save_user_roles(
    body=body,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

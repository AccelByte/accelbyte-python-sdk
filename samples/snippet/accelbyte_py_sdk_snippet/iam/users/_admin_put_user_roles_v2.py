import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import admin_put_user_roles_v2
from accelbyte_py_sdk.api.iam.models import RestErrorResponse

"""
body:
Definition: List[str]

Example: '["z3CQSPA4rYXlsdjf", "zY1UQdJ2sEVpi4UO", "qnwDmuzWVlmlj3R2"]'
"""

result, error = admin_put_user_roles_v2(
    body=body,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
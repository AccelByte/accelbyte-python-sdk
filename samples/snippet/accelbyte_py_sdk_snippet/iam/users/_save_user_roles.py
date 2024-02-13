import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import save_user_roles
from accelbyte_py_sdk.api.iam.models import RestErrorResponse

"""
body:
Definition: List[str]

Example: '["QWyGGFsxGxvmCwKL", "w7Km0Ltj7J8mNlAh", "3BBTHgW1rdOsuya6"]'
"""

result, error = save_user_roles(
    body=body,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

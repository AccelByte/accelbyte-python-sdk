import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import save_user_roles
from accelbyte_py_sdk.api.iam.models import RestErrorResponse

"""
body:
Definition: List[str]

Example: '["XxPPw3nxMMqwGNQT", "L8YjkdWz9YRZ7q5Z", "0Qwrd1swHgIBmJWi"]'
"""

result, error = save_user_roles(
    body=body,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

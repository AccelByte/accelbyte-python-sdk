import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import save_user_roles
from accelbyte_py_sdk.api.iam.models import RestErrorResponse

"""
body:
Definition: List[str]

Example: '["rJb5ODhxjP3GLWyx", "QyIMszoofvthvzmv", "rby6TczzwuxR1857"]'
"""

result, error = save_user_roles(
    body=body,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

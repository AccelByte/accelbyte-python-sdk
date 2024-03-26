import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.gdpr import save_admin_email_configuration
from accelbyte_py_sdk.api.gdpr.models import ResponseError

"""
body:
Definition: List[str]

Example: '["XxTmPnl3sPEXm5ST", "rJlDHUybOoreEYhr", "xIIKHK9lx8ys0yqW"]'
"""

result, error = save_admin_email_configuration(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.gdpr import update_admin_email_configuration
from accelbyte_py_sdk.api.gdpr.models import ResponseError

"""
body:
Definition: List[str]

Example: '["uRrSEJiXQxML2pS8", "tzRYamYyefrKtRtp", "RCuE8AzXCrRLjtPn"]'
"""

result, error = update_admin_email_configuration(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

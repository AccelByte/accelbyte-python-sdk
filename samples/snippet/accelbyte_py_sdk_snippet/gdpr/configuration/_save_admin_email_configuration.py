import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.gdpr import save_admin_email_configuration
from accelbyte_py_sdk.api.gdpr.models import ResponseError

"""
body:
Definition: List[str]

Example: '["ud5Q6UJMh39vjNfV", "X5FIuG4tdgrBWj2i", "gmFV8Vc6d09bHJX6"]'
"""

result, error = save_admin_email_configuration(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.gdpr import save_admin_email_configuration
from accelbyte_py_sdk.api.gdpr.models import ResponseError

"""
body:
Definition: List[str]

Example: '["XvHC8YVynb56vAJg", "g7qByA8mFmMG6nyg", "MS4qG9zD4SXg1iUi"]'
"""

result, error = save_admin_email_configuration(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

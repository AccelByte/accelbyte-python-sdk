import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.gdpr import update_admin_email_configuration
from accelbyte_py_sdk.api.gdpr.models import ResponseError

"""
body:
Definition: List[str]

Example: '["fKyfKbC0fa5F6sK5", "OMZgzIQsSKIQiGtp", "ZyezRaccX9tiwHq5"]'
"""

result, error = update_admin_email_configuration(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

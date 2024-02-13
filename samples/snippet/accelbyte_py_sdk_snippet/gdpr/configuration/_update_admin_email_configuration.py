import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.gdpr import update_admin_email_configuration
from accelbyte_py_sdk.api.gdpr.models import ResponseError

"""
body:
Definition: List[str]

Example: '["1k9o3DPGaQbAgaef", "bTAor9gD50yWa8y3", "UWO3DPnaQypzZAl3"]'
"""

result, error = update_admin_email_configuration(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

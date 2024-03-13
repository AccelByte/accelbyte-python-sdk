import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.gdpr import save_admin_email_configuration
from accelbyte_py_sdk.api.gdpr.models import ResponseError

"""
body:
Definition: List[str]

Example: '["Lwlngo8WUk3035hY", "63l3vi7AQfOMK3Vk", "SxV24oKo6AebMjpt"]'
"""

result, error = save_admin_email_configuration(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

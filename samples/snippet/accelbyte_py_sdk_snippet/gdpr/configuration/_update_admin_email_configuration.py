import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.gdpr import update_admin_email_configuration
from accelbyte_py_sdk.api.gdpr.models import ResponseError

"""
body:
Definition: List[str]

Example: '["7nt8isZoiPIFGfjG", "aRH32EHqpUuKkg9o", "TM34suS3dDeezaiT"]'
"""

result, error = update_admin_email_configuration(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

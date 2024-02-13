import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.session import admin_create_configuration_alert_v1
from accelbyte_py_sdk.api.session.models import ApimodelsConfigAlertRequestCreate
from accelbyte_py_sdk.api.session.models import ApimodelsConfigAlertResponse
from accelbyte_py_sdk.api.session.models import ResponseError

"""
body:
Definition: ApimodelsConfigAlertRequestCreate
duration_days: int

Example: '{"durationDays": 90}'
"""

result, error = admin_create_configuration_alert_v1(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

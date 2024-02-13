import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.session import admin_get_configuration_alert_v1
from accelbyte_py_sdk.api.session.models import ApimodelsConfigAlertResponse
from accelbyte_py_sdk.api.session.models import ResponseError

result, error = admin_get_configuration_alert_v1(
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

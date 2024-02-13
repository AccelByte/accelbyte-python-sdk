import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.gdpr import admin_reset_services_configuration
from accelbyte_py_sdk.api.gdpr.models import ResponseError

result, error = admin_reset_services_configuration(
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

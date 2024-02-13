import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.gdpr import get_admin_email_configuration
from accelbyte_py_sdk.api.gdpr.models import ResponseError

result, error = get_admin_email_configuration(
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

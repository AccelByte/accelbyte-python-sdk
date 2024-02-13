import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.gdpr import delete_admin_email_configuration
from accelbyte_py_sdk.api.gdpr.models import ResponseError

result, error = delete_admin_email_configuration(
    emails=emails,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

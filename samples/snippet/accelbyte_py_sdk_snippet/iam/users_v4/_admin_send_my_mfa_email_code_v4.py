import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import admin_send_my_mfa_email_code_v4
from accelbyte_py_sdk.api.iam.models import RestErrorResponse

result, error = admin_send_my_mfa_email_code_v4(
    x_additional_headers=x_additional_headers,
)

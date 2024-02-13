import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import admin_get_user_by_email_address_v3
from accelbyte_py_sdk.api.iam.models import ModelUserResponseV3
from accelbyte_py_sdk.api.iam.models import RestErrorResponse

result, error = admin_get_user_by_email_address_v3(
    email_address=email_address,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import admin_delete_user_information_v3
from accelbyte_py_sdk.api.iam.models import RestErrorResponse

result, error = admin_delete_user_information_v3(
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

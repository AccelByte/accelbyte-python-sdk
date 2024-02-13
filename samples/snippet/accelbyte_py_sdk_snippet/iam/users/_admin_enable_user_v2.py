import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import admin_enable_user_v2
from accelbyte_py_sdk.api.iam.models import RestErrorResponse

result, error = admin_enable_user_v2(
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

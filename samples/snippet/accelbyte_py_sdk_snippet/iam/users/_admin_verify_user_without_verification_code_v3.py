import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import admin_verify_user_without_verification_code_v3
from accelbyte_py_sdk.api.iam.models import RestErrorResponse

result, error = admin_verify_user_without_verification_code_v3(
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

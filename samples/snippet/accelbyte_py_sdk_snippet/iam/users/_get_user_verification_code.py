import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import get_user_verification_code
from accelbyte_py_sdk.api.iam.models import ModelVerificationCodeResponse
from accelbyte_py_sdk.api.iam.models import RestErrorResponse

result, error = get_user_verification_code(
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

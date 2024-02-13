import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import public_enable_my_email_v4
from accelbyte_py_sdk.api.iam.models import RestErrorResponse

result, error = public_enable_my_email_v4(
    code=code,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

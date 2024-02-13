import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import public_create_justice_user
from accelbyte_py_sdk.api.iam.models import ModelCreateJusticeUserResponse
from accelbyte_py_sdk.api.iam.models import RestErrorResponse

result, error = public_create_justice_user(
    target_namespace=target_namespace,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

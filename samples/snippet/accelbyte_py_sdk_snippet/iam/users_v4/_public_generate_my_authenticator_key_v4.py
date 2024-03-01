import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import public_generate_my_authenticator_key_v4
from accelbyte_py_sdk.api.iam.models import ModelAuthenticatorKeyResponseV4
from accelbyte_py_sdk.api.iam.models import RestErrorResponse

result, error = public_generate_my_authenticator_key_v4(
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
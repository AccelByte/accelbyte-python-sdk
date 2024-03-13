import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import public_verify_registration_code
from accelbyte_py_sdk.api.iam.models import ModelVerifyRegistrationCode
from accelbyte_py_sdk.api.iam.models import RestErrorResponse

"""
body:
Definition: ModelVerifyRegistrationCode
code: str
email_address: str

Example: '{"code": "wXwDeXsKdfr2Muim", "emailAddress": "XGYQH0k8JAAq3lEP"}'
"""

result, error = public_verify_registration_code(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

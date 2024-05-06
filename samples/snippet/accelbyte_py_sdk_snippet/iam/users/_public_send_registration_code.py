import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import public_send_registration_code
from accelbyte_py_sdk.api.iam.models import ModelSendRegisterVerificationCodeRequest
from accelbyte_py_sdk.api.iam.models import RestErrorResponse

"""
body:
Definition: ModelSendRegisterVerificationCodeRequest
email_address: str
language_tag: str

Example: '{"emailAddress": "CfgHVraN9nEIFynT", "languageTag": "OgpaoZdIN0CWKsqR"}'
"""

result, error = public_send_registration_code(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

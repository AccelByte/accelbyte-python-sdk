import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import forgot_password
from accelbyte_py_sdk.api.iam.models import ModelSendVerificationCodeRequest
from accelbyte_py_sdk.api.iam.models import RestErrorResponse

"""
body:
Definition: ModelSendVerificationCodeRequest
context: str
language_tag: str
login_id: str

Example: '{"Context": "MpKZj6NDQ3A32Dui", "LanguageTag": "Rp3hOQYGdzwkrklr", "LoginID": "Cl5gqHZRmzyxPla0"}'
"""

result, error = forgot_password(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

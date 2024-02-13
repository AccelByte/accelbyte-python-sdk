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

Example: '{"Context": "vTLxeBYthWz6jyK7", "LanguageTag": "E6mgvsiQAsIaHPso", "LoginID": "YuhVfMMbO5VSpObM"}'
"""

result, error = forgot_password(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

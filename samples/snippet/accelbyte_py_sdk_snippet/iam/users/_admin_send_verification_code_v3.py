import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import admin_send_verification_code_v3
from accelbyte_py_sdk.api.iam.models import ModelSendVerificationCodeRequestV3
from accelbyte_py_sdk.api.iam.models import RestErrorResponse

"""
body:
Definition: ModelSendVerificationCodeRequestV3
context: str
email_address: str
language_tag: str

Example: '{"context": "Jlj29KJajFNDuDDG", "emailAddress": "KQmB2zheGJmWQscy", "languageTag": "ZWW6tP7wnvo7VaJI"}'
"""

result, error = admin_send_verification_code_v3(
    body=body,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

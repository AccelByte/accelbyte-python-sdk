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

Example: '{"context": "xAfiG9yAdhywl2L0", "emailAddress": "BWVo4hhyxEYqqEFt", "languageTag": "rOL4sBOQnMUo8Ptr"}'
"""

result, error = admin_send_verification_code_v3(
    body=body,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

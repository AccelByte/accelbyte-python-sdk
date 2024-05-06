import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import public_send_verification_link_v3
from accelbyte_py_sdk.api.iam.models import ModelSendVerificationLinkRequest
from accelbyte_py_sdk.api.iam.models import RestErrorResponse

"""
body:
Definition: ModelSendVerificationLinkRequest
language_tag: str

Example: '{"languageTag": "TaV465HIyCb7trup"}'
"""

result, error = public_send_verification_link_v3(
    body=body,
    x_additional_headers=x_additional_headers,
)

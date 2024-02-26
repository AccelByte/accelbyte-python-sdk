import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.lobby import admin_verify_message_profanity_response
from accelbyte_py_sdk.api.lobby.models import ModelsAdminVerifyMessageProfanityRequest
from accelbyte_py_sdk.api.lobby.models import ModelsAdminVerifyMessageProfanityResponse
from accelbyte_py_sdk.api.lobby.models import RestapiErrorResponseBody

"""
body:
Definition: ModelsAdminVerifyMessageProfanityRequest
message: str
profanity_level: str

Example: '{"message": "XDWc3Lai9MX9guHD", "profanityLevel": "GhYWahLKH6dzqnFE"}'
"""

result, error = admin_verify_message_profanity_response(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

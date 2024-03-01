import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import public_user_verification_v3
from accelbyte_py_sdk.api.iam.models import ModelUserVerificationRequestV3
from accelbyte_py_sdk.api.iam.models import RestErrorResponse

"""
body:
Definition: ModelUserVerificationRequestV3
code: str
contact_type: str
language_tag: str
validate_only: bool

Example: '{"code": "UAfHGILJ8Krf7SnH", "contactType": "00jD6dOts7gKcJFF", "languageTag": "qQDLqMk6tGUZzFI2", "validateOnly": false}'
"""

result, error = public_user_verification_v3(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
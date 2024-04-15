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

Example: '{"code": "rWRTrOlmSQwGJsLz", "contactType": "9yeg6NQzG2Ba0N2q", "languageTag": "4avWhfyIwL0AMWbl", "validateOnly": true}'
"""

result, error = public_user_verification_v3(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

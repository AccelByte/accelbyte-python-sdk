import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import admin_verify_account_v3
from accelbyte_py_sdk.api.iam.models import ModelUserVerificationRequest
from accelbyte_py_sdk.api.iam.models import RestErrorResponse

"""
body:
Definition: ModelUserVerificationRequest
code: str
contact_type: str
language_tag: str
validate_only: bool

Example: '{"Code": "GPCSPE4GbcRgaYmH", "ContactType": "jNuf8wsq6yS43ZLQ", "LanguageTag": "DA06dCZU2he8hqaA", "validateOnly": true}'
"""

result, error = admin_verify_account_v3(
    body=body,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

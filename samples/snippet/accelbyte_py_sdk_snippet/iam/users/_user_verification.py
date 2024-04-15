import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import user_verification
from accelbyte_py_sdk.api.iam.models import ModelUserVerificationRequest
from accelbyte_py_sdk.api.iam.models import RestErrorResponse

"""
body:
Definition: ModelUserVerificationRequest
code: str
contact_type: str
language_tag: str
validate_only: bool

Example: '{"Code": "79mfWad7CmrnK15p", "ContactType": "NJF2Z1fK3IxpA8Xc", "LanguageTag": "HFFObnbGWRXy9nRa", "validateOnly": false}'
"""

result, error = user_verification(
    body=body,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

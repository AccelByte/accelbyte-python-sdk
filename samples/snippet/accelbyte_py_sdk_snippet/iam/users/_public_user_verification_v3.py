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

Example: '{"code": "I8xVs9JEmWiEiOIV", "contactType": "FvTOFrVFiix6pQEu", "languageTag": "a0hmy2q56v2NQ606", "validateOnly": false}'
"""

result, error = public_user_verification_v3(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

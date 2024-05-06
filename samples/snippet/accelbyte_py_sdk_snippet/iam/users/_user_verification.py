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

Example: '{"Code": "rGLPzvErgo9hOhDa", "ContactType": "gErSehN6dQJm3pmm", "LanguageTag": "YDbnLw3f7zQM26Py", "validateOnly": true}'
"""

result, error = user_verification(
    body=body,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

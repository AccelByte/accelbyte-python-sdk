import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import public_partial_update_user_v3
from accelbyte_py_sdk.api.iam.models import ModelPublicUserUpdateRequestV3
from accelbyte_py_sdk.api.iam.models import ModelUserResponseV3
from accelbyte_py_sdk.api.iam.models import RestErrorResponse

"""
body:
Definition: ModelPublicUserUpdateRequestV3
avatar_url: str
country: str
date_of_birth: str
display_name: str
language_tag: str
unique_display_name: str
user_name: str

Example: '{"avatarUrl": "DyV0zqWLCfvysRqb", "country": "Ie1HbSQTnvOWzh7U", "dateOfBirth": "ygrwHzOAa9eoECHZ", "displayName": "XP0Emp2hclmwy5Xy", "languageTag": "gfo2gHTu9NEPbehV", "uniqueDisplayName": "562FrKE8ipYZtH7X", "userName": "41o6Fnwo3V4UeyI7"}'
"""

result, error = public_partial_update_user_v3(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

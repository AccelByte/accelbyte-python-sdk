import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import public_update_user_v4
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

Example: '{"avatarUrl": "umvQVawrBB8JDnoN", "country": "COd8jaP64QdU4ISV", "dateOfBirth": "nalBVBfgGoaTuq8f", "displayName": "Lq5vPLPxyH4jR5bM", "languageTag": "M210kQMpBncnjCjE", "uniqueDisplayName": "u2U1PCZeuKXiwWD2", "userName": "kZFT472cSJylw4nM"}'
"""

result, error = public_update_user_v4(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

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

Example: '{"avatarUrl": "ehhKD4B6yMOo321w", "country": "C8s0K2I4K2j8PoIV", "dateOfBirth": "CK96o0uoSbWdmwUy", "displayName": "grbSTVYnc9wFjG6z", "languageTag": "V809DfNUJFk2udm9", "uniqueDisplayName": "yWFGniHonfasM3ep", "userName": "f8gXSQdvxxYc0eiE"}'
"""

result, error = public_update_user_v4(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

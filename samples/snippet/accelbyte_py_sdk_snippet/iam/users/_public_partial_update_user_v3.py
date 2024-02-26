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

Example: '{"avatarUrl": "KjTD1ahM953r5EBi", "country": "AMF6WYJbDHCzdP65", "dateOfBirth": "XFGHw2LUESLy8ZiX", "displayName": "WEg9Jpbd6MmLRnZK", "languageTag": "aIZMJnAo3sKs9XN8", "uniqueDisplayName": "eTOVxJMKM9PoZqpY", "userName": "C4I5ZWnwSY3QGjWy"}'
"""

result, error = public_partial_update_user_v3(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

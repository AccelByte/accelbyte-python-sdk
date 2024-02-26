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

Example: '{"avatarUrl": "vycBp3rnFmKXCbPt", "country": "JnMTepFgFi8C9np5", "dateOfBirth": "j0cmCwOTlmPOFEU6", "displayName": "fiFxFbADfHPtUq9N", "languageTag": "TdbTEc5mFkKNv4CG", "uniqueDisplayName": "uWrN2ai7RloxnUCM", "userName": "YP3s2uVyoIqc8TPS"}'
"""

result, error = public_update_user_v4(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

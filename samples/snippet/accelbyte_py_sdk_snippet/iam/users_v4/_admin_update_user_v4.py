import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import admin_update_user_v4
from accelbyte_py_sdk.api.iam.models import ModelUserResponseV3
from accelbyte_py_sdk.api.iam.models import ModelUserUpdateRequestV3
from accelbyte_py_sdk.api.iam.models import RestErrorResponse

"""
body:
Definition: ModelUserUpdateRequestV3
avatar_url: str
country: str
date_of_birth: str
display_name: str
language_tag: str
unique_display_name: str
user_name: str

Example: '{"avatarUrl": "xpfBr8TJERw8lmfx", "country": "SThBXhpsRqBGNDPk", "dateOfBirth": "1onqpl6kxNwovo0U", "displayName": "ahlW0QJLiTlBRSUN", "languageTag": "d8wNVaRhbGLkryzZ", "uniqueDisplayName": "xXNcr92RRkhnfi7v", "userName": "SEnvZkOFFNshlFph"}'
"""

result, error = admin_update_user_v4(
    body=body,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

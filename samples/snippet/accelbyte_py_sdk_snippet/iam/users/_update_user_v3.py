import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import update_user_v3
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

Example: '{"avatarUrl": "AZaY3iK8wX5nxR3U", "country": "79pLdgFnV9ENCAt3", "dateOfBirth": "1OOEmM6tD2nseOKo", "displayName": "ovOgFD2hmlk2a1Oi", "languageTag": "XT8YEDRKBSt6XvEl", "uniqueDisplayName": "hfRp0f0ESiAbDlDC", "userName": "cI5ryaxdUSAaBMX6"}'
"""

result, error = update_user_v3(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

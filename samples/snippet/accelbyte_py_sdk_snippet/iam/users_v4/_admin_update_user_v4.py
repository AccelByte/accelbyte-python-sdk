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
skip_login_queue: bool
unique_display_name: str
user_name: str

Example: '{"avatarUrl": "VCMOEzHfWwCmMJRI", "country": "PEvHlZSZRcpcOYOR", "dateOfBirth": "elLCsUpwkxASoRn8", "displayName": "MG8ofAxUGJJUWyRE", "languageTag": "pM5CzfPa7AgL4Dgy", "skipLoginQueue": true, "uniqueDisplayName": "JTbDtifBrzL6wUai", "userName": "RlqrywiuuQuOjPtV"}'
"""

result, error = admin_update_user_v4(
    body=body,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

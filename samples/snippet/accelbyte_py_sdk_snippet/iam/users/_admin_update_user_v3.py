import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import admin_update_user_v3
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

Example: '{"avatarUrl": "U388TSdtbnwG7prw", "country": "d2MXZulL5LbumjFe", "dateOfBirth": "muOULiXSMnVOjaT7", "displayName": "foIhyA3h5uCO2u62", "languageTag": "rYr1JGDQVEWeQHLm", "skipLoginQueue": false, "uniqueDisplayName": "acxlAILr2KYUh5By", "userName": "eUAPRpDQm9RewjQm"}'
"""

result, error = admin_update_user_v3(
    body=body,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

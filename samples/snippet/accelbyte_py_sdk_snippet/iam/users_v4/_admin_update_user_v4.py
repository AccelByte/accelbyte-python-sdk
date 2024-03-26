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

Example: '{"avatarUrl": "bku6H0SX3oi5AdUa", "country": "bkte7XAN44Z0xQXt", "dateOfBirth": "WIbyIwASzmRJ1Xa9", "displayName": "yHovXY2sElY37O7d", "languageTag": "QU80SwltbaQy8k3H", "skipLoginQueue": true, "uniqueDisplayName": "ncB5kzFMVrWKVXrK", "userName": "CW4u1JvTXiQxxEPM"}'
"""

result, error = admin_update_user_v4(
    body=body,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

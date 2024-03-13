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

Example: '{"avatarUrl": "Ed8i4kn0j5nwoPxY", "country": "Dc1nEtCOSwuIhYR2", "dateOfBirth": "agjvImkElXjSuUJF", "displayName": "ADyK0JmfeQUdS9vD", "languageTag": "94lMli7CTZzaY9H2", "skipLoginQueue": false, "uniqueDisplayName": "OIoiy1epNct0hQcw", "userName": "1C64PMtrHbu7XA5c"}'
"""

result, error = admin_update_user_v3(
    body=body,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

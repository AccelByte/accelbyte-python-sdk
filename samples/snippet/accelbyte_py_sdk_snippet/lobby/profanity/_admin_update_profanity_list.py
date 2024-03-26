import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.lobby import admin_update_profanity_list
from accelbyte_py_sdk.api.lobby.models import ModelsAdminUpdateProfanityList
from accelbyte_py_sdk.api.lobby.models import RestapiErrorResponseBody

"""
body:
Definition: ModelsAdminUpdateProfanityList
is_enabled: bool
is_mandatory: bool
new_name: str

Example: '{"isEnabled": true, "isMandatory": false, "newName": "erRBvExMCcQTAirD"}'
"""

result, error = admin_update_profanity_list(
    body=body,
    list_=list_,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

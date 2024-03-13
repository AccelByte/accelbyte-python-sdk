import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.lobby import admin_create_profanity_list
from accelbyte_py_sdk.api.lobby.models import ModelsAdminCreateProfanityListRequest
from accelbyte_py_sdk.api.lobby.models import RestapiErrorResponseBody

"""
body:
Definition: ModelsAdminCreateProfanityListRequest
is_enabled: bool
is_mandatory: bool
name: str

Example: '{"isEnabled": true, "isMandatory": false, "name": "TmmOcaSTnUMqlgzB"}'
"""

result, error = admin_create_profanity_list(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

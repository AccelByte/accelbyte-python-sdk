import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.group import update_group_configuration_admin_v1
from accelbyte_py_sdk.api.group.models import ModelsUpdateGroupConfigurationRequestV1
from accelbyte_py_sdk.api.group.models import ModelsUpdateGroupConfigurationResponseV1
from accelbyte_py_sdk.api.group.models import ResponseErrorResponse

"""
body:
Definition: ModelsUpdateGroupConfigurationRequestV1
description: str
group_max_member: int
name: str

Example: '{"description": "ahhlwQRoEd8PG8BK", "groupMaxMember": 38, "name": "3cJWBgOGFIZid4pj"}'
"""

result, error = update_group_configuration_admin_v1(
    body=body,
    configuration_code=configuration_code,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

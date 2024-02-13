import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.group import admin_get_user_group_status_information_v2
from accelbyte_py_sdk.api.group.models import ModelsGetUserGroupInformationResponseV1
from accelbyte_py_sdk.api.group.models import ResponseErrorResponse

result, error = admin_get_user_group_status_information_v2(
    group_id=group_id,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

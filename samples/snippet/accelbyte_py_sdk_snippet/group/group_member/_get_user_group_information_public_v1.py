import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.group import get_user_group_information_public_v1
from accelbyte_py_sdk.api.group.models import ModelsGetUserGroupInformationResponseV1
from accelbyte_py_sdk.api.group.models import ResponseErrorResponse

result, error = get_user_group_information_public_v1(
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

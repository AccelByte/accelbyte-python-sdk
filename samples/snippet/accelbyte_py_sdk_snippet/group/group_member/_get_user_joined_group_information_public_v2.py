import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.group import get_user_joined_group_information_public_v2
from accelbyte_py_sdk.api.group.models import ModelsGetGroupMemberListResponseV1
from accelbyte_py_sdk.api.group.models import ResponseErrorResponse

result, error = get_user_joined_group_information_public_v2(
    user_id=user_id,
    limit=limit,
    offset=offset,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

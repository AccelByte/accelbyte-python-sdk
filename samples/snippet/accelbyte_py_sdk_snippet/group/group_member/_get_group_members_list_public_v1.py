import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.group import get_group_members_list_public_v1
from accelbyte_py_sdk.api.group.models import ModelsGetGroupMemberListResponseV1
from accelbyte_py_sdk.api.group.models import ResponseErrorResponse

result, error = get_group_members_list_public_v1(
    group_id=group_id,
    limit=limit,
    offset=offset,
    order=order,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

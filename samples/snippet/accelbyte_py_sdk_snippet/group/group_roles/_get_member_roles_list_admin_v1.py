import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.group import get_member_roles_list_admin_v1
from accelbyte_py_sdk.api.group.models import ModelsGetMemberRolesListResponseV1
from accelbyte_py_sdk.api.group.models import ResponseErrorResponse

result, error = get_member_roles_list_admin_v1(
    limit=limit,
    offset=offset,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

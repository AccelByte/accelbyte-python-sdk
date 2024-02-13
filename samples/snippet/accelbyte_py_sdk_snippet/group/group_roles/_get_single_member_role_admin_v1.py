import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.group import get_single_member_role_admin_v1
from accelbyte_py_sdk.api.group.models import ModelsMemberRoleResponseV1
from accelbyte_py_sdk.api.group.models import ResponseErrorResponse

result, error = get_single_member_role_admin_v1(
    member_role_id=member_role_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

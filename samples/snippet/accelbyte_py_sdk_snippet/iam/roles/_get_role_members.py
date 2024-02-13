import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import get_role_members
from accelbyte_py_sdk.api.iam.models import ModelRoleMembersResponse
from accelbyte_py_sdk.api.iam.models import RestErrorResponse

result, error = get_role_members(
    role_id=role_id,
    x_additional_headers=x_additional_headers,
)

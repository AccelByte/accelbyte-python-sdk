import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import get_role_managers
from accelbyte_py_sdk.api.iam.models import ModelRoleManagersResponse
from accelbyte_py_sdk.api.iam.models import RestErrorResponse

result, error = get_role_managers(
    role_id=role_id,
    x_additional_headers=x_additional_headers,
)

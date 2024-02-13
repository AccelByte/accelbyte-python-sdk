import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import get_role_admin_status
from accelbyte_py_sdk.api.iam.models import ModelRoleAdminStatusResponse
from accelbyte_py_sdk.api.iam.models import RestErrorResponse

result, error = get_role_admin_status(
    role_id=role_id,
    x_additional_headers=x_additional_headers,
)

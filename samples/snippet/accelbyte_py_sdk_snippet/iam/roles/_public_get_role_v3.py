import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import public_get_role_v3
from accelbyte_py_sdk.api.iam.models import ModelRoleResponse
from accelbyte_py_sdk.api.iam.models import RestErrorResponse

result, error = public_get_role_v3(
    role_id=role_id,
    x_additional_headers=x_additional_headers,
)

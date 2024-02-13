import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import get_roles
from accelbyte_py_sdk.api.iam.models import ModelRoleResponseWithManagers
from accelbyte_py_sdk.api.iam.models import RestErrorResponse

result, error = get_roles(
    is_wildcard=is_wildcard,
    x_additional_headers=x_additional_headers,
)

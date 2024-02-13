import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import set_role_as_admin
from accelbyte_py_sdk.api.iam.models import RestErrorResponse

result, error = set_role_as_admin(
    role_id=role_id,
    x_additional_headers=x_additional_headers,
)

import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import get_users_by_login_ids
from accelbyte_py_sdk.api.iam.models import ModelPublicUsersResponse
from accelbyte_py_sdk.api.iam.models import RestErrorResponse

result, error = get_users_by_login_ids(
    login_ids=login_ids,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

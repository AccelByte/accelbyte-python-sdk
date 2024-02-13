import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import get_admin_users_by_role_id_v3
from accelbyte_py_sdk.api.iam.models import ModelGetUsersResponseWithPaginationV3
from accelbyte_py_sdk.api.iam.models import RestErrorResponse

result, error = get_admin_users_by_role_id_v3(
    role_id=role_id,
    after=after,
    before=before,
    limit=limit,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

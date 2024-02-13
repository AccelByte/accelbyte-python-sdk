import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import list_admins_v3
from accelbyte_py_sdk.api.iam.models import ModelGetUsersResponseWithPaginationV3
from accelbyte_py_sdk.api.iam.models import RestErrorResponse

result, error = list_admins_v3(
    after=after,
    before=before,
    limit=limit,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import search_user
from accelbyte_py_sdk.api.iam.models import ModelSearchUsersResponse
from accelbyte_py_sdk.api.iam.models import RestErrorResponse

result, error = search_user(
    query=query,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

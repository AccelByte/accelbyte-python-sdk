import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.group import get_my_group_join_request_v2
from accelbyte_py_sdk.api.group.models import ModelsGetMemberRequestsListResponseV1
from accelbyte_py_sdk.api.group.models import ResponseErrorResponse

result, error = get_my_group_join_request_v2(
    limit=limit,
    offset=offset,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.group import cancel_group_join_request_v1
from accelbyte_py_sdk.api.group.models import ModelsMemberRequestGroupResponseV1
from accelbyte_py_sdk.api.group.models import ResponseErrorResponse

result, error = cancel_group_join_request_v1(
    group_id=group_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.group import accept_group_join_request_public_v2
from accelbyte_py_sdk.api.group.models import ModelsMemberRequestGroupResponseV1
from accelbyte_py_sdk.api.group.models import ResponseErrorResponse

result, error = accept_group_join_request_public_v2(
    group_id=group_id,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

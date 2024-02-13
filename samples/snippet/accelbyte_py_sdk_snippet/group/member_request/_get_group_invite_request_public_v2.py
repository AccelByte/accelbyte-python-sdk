import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.group import get_group_invite_request_public_v2
from accelbyte_py_sdk.api.group.models import ModelsGetMemberRequestsListResponseV1
from accelbyte_py_sdk.api.group.models import ResponseErrorResponse

result, error = get_group_invite_request_public_v2(
    group_id=group_id,
    limit=limit,
    offset=offset,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

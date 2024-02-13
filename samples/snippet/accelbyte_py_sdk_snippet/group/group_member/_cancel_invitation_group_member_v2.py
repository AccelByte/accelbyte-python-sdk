import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.group import cancel_invitation_group_member_v2
from accelbyte_py_sdk.api.group.models import ModelsCancelInvitationGroupResponseV2
from accelbyte_py_sdk.api.group.models import ResponseErrorResponse

result, error = cancel_invitation_group_member_v2(
    group_id=group_id,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

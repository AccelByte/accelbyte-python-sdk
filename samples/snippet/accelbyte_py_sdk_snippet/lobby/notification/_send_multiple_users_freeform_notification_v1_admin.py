import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.lobby import (
    send_multiple_users_freeform_notification_v1_admin,
)
from accelbyte_py_sdk.api.lobby.models import (
    ModelBulkUsersFreeFormNotificationRequestV1,
)
from accelbyte_py_sdk.api.lobby.models import RestapiErrorResponseV1

"""
body:
Definition: ModelBulkUsersFreeFormNotificationRequestV1
message: str
topic_name: str
user_ids: List[str]

Example: '{"message": "xUySGbk7qdTxRRz5", "topicName": "FQQtl02K6lViLmDE", "userIds": ["C49Qw9Yb9E9F2ct2", "D5gLhh66tWDw16xi", "ubikps4WgVM8knMO"]}'
"""

result, error = send_multiple_users_freeform_notification_v1_admin(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

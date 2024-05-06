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

Example: '{"message": "R0sfeCdjqacZlkJB", "topicName": "Gb9kMQdHtFww3meQ", "userIds": ["S52NYHK9lp2KUVXf", "UJQ9ivIMyubs5bAD", "FgM6oHbulP2cjOXA"]}'
"""

result, error = send_multiple_users_freeform_notification_v1_admin(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.lobby import delete_notification_topic_v1_admin
from accelbyte_py_sdk.api.lobby.models import RestapiErrorResponseV1

result, error = delete_notification_topic_v1_admin(
    topic_name=topic_name,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

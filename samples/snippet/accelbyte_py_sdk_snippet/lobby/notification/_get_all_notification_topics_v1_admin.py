import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.lobby import get_all_notification_topics_v1_admin
from accelbyte_py_sdk.api.lobby.models import ModelGetAllNotificationTopicsResponse
from accelbyte_py_sdk.api.lobby.models import RestapiErrorResponseV1

result, error = get_all_notification_topics_v1_admin(
    after=after,
    before=before,
    limit=limit,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

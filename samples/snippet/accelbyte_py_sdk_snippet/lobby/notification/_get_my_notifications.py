import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.lobby import get_my_notifications
from accelbyte_py_sdk.api.lobby.models import ModelNotificationResponse
from accelbyte_py_sdk.api.lobby.models import RestapiErrorResponseV1

result, error = get_my_notifications(
    end_time=end_time,
    limit=limit,
    offset=offset,
    start_time=start_time,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

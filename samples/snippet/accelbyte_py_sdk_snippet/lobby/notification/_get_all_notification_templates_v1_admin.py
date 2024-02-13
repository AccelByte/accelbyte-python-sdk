import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.lobby import get_all_notification_templates_v1_admin
from accelbyte_py_sdk.api.lobby.models import ModelNotificationTemplateResponse
from accelbyte_py_sdk.api.lobby.models import RestapiErrorResponseV1

result, error = get_all_notification_templates_v1_admin(
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

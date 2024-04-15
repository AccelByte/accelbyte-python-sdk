import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.lobby import free_form_notification
from accelbyte_py_sdk.api.lobby.models import ModelFreeFormNotificationRequest
from accelbyte_py_sdk.api.lobby.models import RestapiErrorResponseBody

"""
body:
Definition: ModelFreeFormNotificationRequest
message: str
topic: str

Example: '{"message": "eb8VTY7S7thmeqbY", "topic": "cC9GlWO5341h3tne"}'
"""

result, error = free_form_notification(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

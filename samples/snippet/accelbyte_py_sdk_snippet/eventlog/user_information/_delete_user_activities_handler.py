import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.eventlog import delete_user_activities_handler

result, error = delete_user_activities_handler(
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

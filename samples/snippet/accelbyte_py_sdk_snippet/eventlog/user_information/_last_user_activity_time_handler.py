import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.eventlog import last_user_activity_time_handler
from accelbyte_py_sdk.api.eventlog.models import ModelsUserLastActivity

result, error = last_user_activity_time_handler(
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

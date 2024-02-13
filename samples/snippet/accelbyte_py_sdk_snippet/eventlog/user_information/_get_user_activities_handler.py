import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.eventlog import get_user_activities_handler
from accelbyte_py_sdk.api.eventlog.models import ModelsEventResponse

result, error = get_user_activities_handler(
    user_id=user_id,
    page_size=page_size,
    offset=offset,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

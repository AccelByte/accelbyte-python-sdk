import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.eventlog import get_registered_event_id_handler
from accelbyte_py_sdk.api.eventlog.models import ModelsEventRegistry

result, error = get_registered_event_id_handler(
    event_id=event_id,
    x_additional_headers=x_additional_headers,
)

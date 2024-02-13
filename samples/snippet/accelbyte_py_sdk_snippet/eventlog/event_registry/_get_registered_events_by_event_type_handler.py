import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.eventlog import get_registered_events_by_event_type_handler
from accelbyte_py_sdk.api.eventlog.models import ModelsEventRegistry

result, error = get_registered_events_by_event_type_handler(
    event_type=event_type,
    x_additional_headers=x_additional_headers,
)

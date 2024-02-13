import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.eventlog import specific_event_type_description_handler
from accelbyte_py_sdk.api.eventlog.models import ModelsMultipleEventType

result, error = specific_event_type_description_handler(
    event_types=event_types,
    x_additional_headers=x_additional_headers,
)

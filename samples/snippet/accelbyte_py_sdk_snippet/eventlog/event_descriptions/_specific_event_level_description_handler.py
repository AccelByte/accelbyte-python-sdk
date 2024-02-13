import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.eventlog import specific_event_level_description_handler
from accelbyte_py_sdk.api.eventlog.models import ModelsMultipleEventLevel

result, error = specific_event_level_description_handler(
    event_levels=event_levels,
    x_additional_headers=x_additional_headers,
)

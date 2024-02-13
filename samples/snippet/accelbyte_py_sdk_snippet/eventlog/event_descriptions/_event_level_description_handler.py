import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.eventlog import event_level_description_handler
from accelbyte_py_sdk.api.eventlog.models import ModelsMultipleEventLevel

result, error = event_level_description_handler(
    x_additional_headers=x_additional_headers,
)

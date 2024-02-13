import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.eventlog import event_type_description_handler
from accelbyte_py_sdk.api.eventlog.models import ModelsMultipleEventType

result, error = event_type_description_handler(
    x_additional_headers=x_additional_headers,
)

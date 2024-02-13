import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.eventlog import specific_event_id_description_handler
from accelbyte_py_sdk.api.eventlog.models import ModelsMultipleEventID

result, error = specific_event_id_description_handler(
    event_ids=event_ids,
    x_additional_headers=x_additional_headers,
)

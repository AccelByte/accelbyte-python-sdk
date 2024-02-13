import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.eventlog import unregister_event_id_handler

result, error = unregister_event_id_handler(
    event_id=event_id,
    x_additional_headers=x_additional_headers,
)

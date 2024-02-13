import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.eventlog import event_id_description_handler
from accelbyte_py_sdk.api.eventlog.models import ModelsMultipleEventID

result, error = event_id_description_handler(
    x_additional_headers=x_additional_headers,
)

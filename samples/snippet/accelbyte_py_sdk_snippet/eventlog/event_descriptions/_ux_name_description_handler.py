import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.eventlog import ux_name_description_handler
from accelbyte_py_sdk.api.eventlog.models import ModelsMultipleUX

result, error = ux_name_description_handler(
    x_additional_headers=x_additional_headers,
)

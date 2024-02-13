import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.eventlog import specific_ux_description_handler
from accelbyte_py_sdk.api.eventlog.models import ModelsMultipleUX

result, error = specific_ux_description_handler(
    ux=ux,
    x_additional_headers=x_additional_headers,
)

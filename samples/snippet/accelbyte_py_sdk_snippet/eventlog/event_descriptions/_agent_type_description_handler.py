import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.eventlog import agent_type_description_handler
from accelbyte_py_sdk.api.eventlog.models import ModelsMultipleAgentType

result, error = agent_type_description_handler(
    x_additional_headers=x_additional_headers,
)

import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.eventlog import specific_agent_type_description_handler
from accelbyte_py_sdk.api.eventlog.models import ModelsMultipleAgentType

result, error = specific_agent_type_description_handler(
    agent_types=agent_types,
    x_additional_headers=x_additional_headers,
)

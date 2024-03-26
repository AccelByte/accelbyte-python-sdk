import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.ams import development_server_configuration_delete
from accelbyte_py_sdk.api.ams.models import ResponseErrorResponse

result, error = development_server_configuration_delete(
    development_server_config_id=development_server_config_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

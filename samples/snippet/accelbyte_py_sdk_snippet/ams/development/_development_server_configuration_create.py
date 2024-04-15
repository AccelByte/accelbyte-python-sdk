import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.ams import development_server_configuration_create
from accelbyte_py_sdk.api.ams.models import (
    ApiDevelopmentServerConfigurationCreateRequest,
)
from accelbyte_py_sdk.api.ams.models import (
    ApiDevelopmentServerConfigurationCreateResponse,
)
from accelbyte_py_sdk.api.ams.models import ResponseErrorResponse

"""
body:
Definition: ApiDevelopmentServerConfigurationCreateRequest
command_line_arguments: str
image_id: str
name: str

Example: '{"commandLineArguments": "34kDFKEvvs7j4wiU", "imageId": "TTLJ8N8lgkjOsCqK", "name": "rk1Dk7dcX4PV5VWO"}'
"""

result, error = development_server_configuration_create(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

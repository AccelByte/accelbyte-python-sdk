import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.ams import development_server_configuration_list
from accelbyte_py_sdk.api.ams.models import ApiDevelopmentServerConfigurationGetResponse
from accelbyte_py_sdk.api.ams.models import ResponseErrorResponse

result, error = development_server_configuration_list(
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

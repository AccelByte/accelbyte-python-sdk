import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.group import delete_group_configuration_v1
from accelbyte_py_sdk.api.group.models import ResponseErrorResponse

result, error = delete_group_configuration_v1(
    configuration_code=configuration_code,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

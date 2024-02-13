import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.group import get_group_configuration_admin_v1
from accelbyte_py_sdk.api.group.models import ModelsGetGroupConfigurationResponseV1
from accelbyte_py_sdk.api.group.models import ResponseErrorResponse

result, error = get_group_configuration_admin_v1(
    configuration_code=configuration_code,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

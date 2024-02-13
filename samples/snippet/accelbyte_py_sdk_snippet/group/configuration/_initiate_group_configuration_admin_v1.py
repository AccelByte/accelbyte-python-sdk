import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.group import initiate_group_configuration_admin_v1
from accelbyte_py_sdk.api.group.models import ModelsCreateGroupConfigurationResponseV1
from accelbyte_py_sdk.api.group.models import ResponseErrorResponse

result, error = initiate_group_configuration_admin_v1(
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

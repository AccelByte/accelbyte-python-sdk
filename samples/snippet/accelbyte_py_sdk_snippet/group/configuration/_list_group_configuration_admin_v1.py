import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.group import list_group_configuration_admin_v1
from accelbyte_py_sdk.api.group.models import ModelsListConfigurationResponseV1
from accelbyte_py_sdk.api.group.models import ResponseErrorResponse

result, error = list_group_configuration_admin_v1(
    limit=limit,
    offset=offset,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

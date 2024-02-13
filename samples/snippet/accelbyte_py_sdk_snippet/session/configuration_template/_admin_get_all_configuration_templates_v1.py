import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.session import admin_get_all_configuration_templates_v1
from accelbyte_py_sdk.api.session.models import ApimodelsConfigurationTemplatesResponse
from accelbyte_py_sdk.api.session.models import ResponseError

result, error = admin_get_all_configuration_templates_v1(
    limit=limit,
    name=name,
    offset=offset,
    order=order,
    order_by=order_by,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

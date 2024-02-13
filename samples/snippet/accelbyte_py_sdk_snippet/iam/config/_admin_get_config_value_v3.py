import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import admin_get_config_value_v3
from accelbyte_py_sdk.api.iam.models import ModelConfigValueResponseV3
from accelbyte_py_sdk.api.iam.models import RestErrorResponse

result, error = admin_get_config_value_v3(
    config_key=config_key,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

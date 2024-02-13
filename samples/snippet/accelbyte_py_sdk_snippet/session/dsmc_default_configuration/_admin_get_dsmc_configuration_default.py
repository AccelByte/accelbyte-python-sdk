import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.session import admin_get_dsmc_configuration_default
from accelbyte_py_sdk.api.session.models import ModelsDefaultDSMCConfig
from accelbyte_py_sdk.api.session.models import ResponseError

result, error = admin_get_dsmc_configuration_default(
    x_additional_headers=x_additional_headers,
)

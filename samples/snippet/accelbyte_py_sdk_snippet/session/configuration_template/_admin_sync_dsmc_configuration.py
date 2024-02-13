import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.session import admin_sync_dsmc_configuration
from accelbyte_py_sdk.api.session.models import ModelsDSMConfigRecord
from accelbyte_py_sdk.api.session.models import ResponseError

result, error = admin_sync_dsmc_configuration(
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

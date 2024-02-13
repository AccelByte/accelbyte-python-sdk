import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.lobby import admin_import_config_v1
from accelbyte_py_sdk.api.lobby.models import ModelsImportConfigResponse
from accelbyte_py_sdk.api.lobby.models import ResponseError

result, error = admin_import_config_v1(
    file=file,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

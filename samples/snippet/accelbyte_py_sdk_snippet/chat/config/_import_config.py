import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.chat import import_config
from accelbyte_py_sdk.api.chat.models import ModelsImportConfigResponse
from accelbyte_py_sdk.api.chat.models import ResponseError

result, error = import_config(
    file=file,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.chat import export_config
from accelbyte_py_sdk.api.chat.models import ModelsConfigExport
from accelbyte_py_sdk.api.chat.models import ResponseError

result, error = export_config(
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

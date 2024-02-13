import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.matchmaking import import_channels
from accelbyte_py_sdk.api.matchmaking.models import ModelsImportConfigResponse
from accelbyte_py_sdk.api.matchmaking.models import ResponseErrorV1

result, error = import_channels(
    file=file,
    strategy=strategy,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.matchmaking import export_channels
from accelbyte_py_sdk.api.matchmaking.models import ResponseErrorV1

result, error = export_channels(
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

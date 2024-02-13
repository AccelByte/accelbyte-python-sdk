import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.qosm import delete_server
from accelbyte_py_sdk.api.qosm.models import ResponseError

result, error = delete_server(
    region=region,
    x_additional_headers=x_additional_headers,
)

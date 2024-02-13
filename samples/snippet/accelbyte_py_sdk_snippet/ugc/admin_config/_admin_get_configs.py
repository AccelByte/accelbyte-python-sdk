import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.ugc import admin_get_configs
from accelbyte_py_sdk.api.ugc.models import ModelsPaginatedGetConfigsResponse
from accelbyte_py_sdk.api.ugc.models import ResponseError

result, error = admin_get_configs(
    limit=limit,
    offset=offset,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

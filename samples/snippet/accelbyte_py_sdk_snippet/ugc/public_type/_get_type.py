import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.ugc import get_type
from accelbyte_py_sdk.api.ugc.models import ModelsPaginatedGetTypeResponse
from accelbyte_py_sdk.api.ugc.models import ResponseError

result, error = get_type(
    limit=limit,
    offset=offset,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

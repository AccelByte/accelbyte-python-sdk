import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.ugc import get_tag
from accelbyte_py_sdk.api.ugc.models import ModelsPaginatedGetTagResponse
from accelbyte_py_sdk.api.ugc.models import ResponseError

result, error = get_tag(
    limit=limit,
    offset=offset,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

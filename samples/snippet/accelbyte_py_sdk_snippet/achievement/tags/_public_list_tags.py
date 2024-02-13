import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.achievement import public_list_tags
from accelbyte_py_sdk.api.achievement.models import ModelsPaginatedTagResponse
from accelbyte_py_sdk.api.achievement.models import ResponseError

result, error = public_list_tags(
    limit=limit,
    name=name,
    offset=offset,
    sort_by=sort_by,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

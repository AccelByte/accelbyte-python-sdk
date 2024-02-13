import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import query_key_groups
from accelbyte_py_sdk.api.platform.models import KeyGroupPagingSlicedResult

result, error = query_key_groups(
    limit=limit,
    name=name,
    offset=offset,
    tag=tag,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

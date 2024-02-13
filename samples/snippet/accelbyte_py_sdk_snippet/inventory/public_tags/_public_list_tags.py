import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.inventory import public_list_tags
from accelbyte_py_sdk.api.inventory.models import ApimodelsErrorResponse
from accelbyte_py_sdk.api.inventory.models import ApimodelsListTagsResp

result, error = public_list_tags(
    limit=limit,
    offset=offset,
    sort_by=sort_by,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

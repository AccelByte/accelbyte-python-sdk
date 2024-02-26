import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.cloudsave import public_list_tags_handler_v1
from accelbyte_py_sdk.api.cloudsave.models import ModelsListTagsResponse
from accelbyte_py_sdk.api.cloudsave.models import ModelsResponseError

result, error = public_list_tags_handler_v1(
    limit=limit,
    offset=offset,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

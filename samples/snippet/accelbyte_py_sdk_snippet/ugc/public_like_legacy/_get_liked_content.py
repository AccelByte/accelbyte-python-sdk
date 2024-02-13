import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.ugc import get_liked_content
from accelbyte_py_sdk.api.ugc.models import ModelsPaginatedContentDownloadResponse
from accelbyte_py_sdk.api.ugc.models import ResponseError

result, error = get_liked_content(
    isofficial=isofficial,
    limit=limit,
    name=name,
    offset=offset,
    orderby=orderby,
    sortby=sortby,
    subtype=subtype,
    tags=tags,
    type_=type_,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

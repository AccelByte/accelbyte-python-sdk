import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.ugc import admin_search_channel_specific_content
from accelbyte_py_sdk.api.ugc.models import ModelsPaginatedContentDownloadResponse
from accelbyte_py_sdk.api.ugc.models import ResponseError

result, error = admin_search_channel_specific_content(
    channel_id=channel_id,
    creator=creator,
    ishidden=ishidden,
    isofficial=isofficial,
    limit=limit,
    name=name,
    offset=offset,
    orderby=orderby,
    sortby=sortby,
    subtype=subtype,
    tags=tags,
    type_=type_,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

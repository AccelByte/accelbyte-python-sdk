import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.ugc import admin_list_content_v2
from accelbyte_py_sdk.api.ugc.models import ModelsPaginatedContentDownloadResponseV2
from accelbyte_py_sdk.api.ugc.models import ResponseError

result, error = admin_list_content_v2(
    is_official=is_official,
    limit=limit,
    name=name,
    offset=offset,
    sort_by=sort_by,
    sub_type=sub_type,
    tags=tags,
    type_=type_,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

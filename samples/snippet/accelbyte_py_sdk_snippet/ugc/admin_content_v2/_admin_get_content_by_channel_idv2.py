import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.ugc import admin_get_content_by_channel_idv2
from accelbyte_py_sdk.api.ugc.models import ModelsPaginatedContentDownloadResponseV2
from accelbyte_py_sdk.api.ugc.models import ResponseError

result, error = admin_get_content_by_channel_idv2(
    channel_id=channel_id,
    limit=limit,
    name=name,
    offset=offset,
    sort_by=sort_by,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

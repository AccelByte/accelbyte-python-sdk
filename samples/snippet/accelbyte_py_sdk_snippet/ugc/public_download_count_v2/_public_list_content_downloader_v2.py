import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.ugc import public_list_content_downloader_v2
from accelbyte_py_sdk.api.ugc.models import ModelsPaginatedContentDownloaderResponse
from accelbyte_py_sdk.api.ugc.models import ResponseError

result, error = public_list_content_downloader_v2(
    content_id=content_id,
    limit=limit,
    offset=offset,
    sort_by=sort_by,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

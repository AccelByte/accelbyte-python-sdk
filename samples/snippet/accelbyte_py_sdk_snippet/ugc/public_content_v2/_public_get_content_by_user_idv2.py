import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.ugc import public_get_content_by_user_idv2
from accelbyte_py_sdk.api.ugc.models import ModelsPaginatedContentDownloadResponseV2
from accelbyte_py_sdk.api.ugc.models import ResponseError

result, error = public_get_content_by_user_idv2(
    user_id=user_id,
    limit=limit,
    offset=offset,
    sort_by=sort_by,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

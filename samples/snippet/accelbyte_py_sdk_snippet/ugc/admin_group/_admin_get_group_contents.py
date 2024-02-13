import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.ugc import admin_get_group_contents
from accelbyte_py_sdk.api.ugc.models import ModelsPaginatedContentDownloadResponse
from accelbyte_py_sdk.api.ugc.models import ResponseError

result, error = admin_get_group_contents(
    group_id=group_id,
    user_id=user_id,
    limit=limit,
    offset=offset,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

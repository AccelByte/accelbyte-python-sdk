import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.ugc import public_get_user_content
from accelbyte_py_sdk.api.ugc.models import ModelsPaginatedContentDownloadResponse
from accelbyte_py_sdk.api.ugc.models import ResponseError

result, error = public_get_user_content(
    user_id=user_id,
    limit=limit,
    offset=offset,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

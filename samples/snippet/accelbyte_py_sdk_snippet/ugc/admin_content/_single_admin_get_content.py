import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.ugc import single_admin_get_content
from accelbyte_py_sdk.api.ugc.models import ModelsPaginatedContentDownloadResponse
from accelbyte_py_sdk.api.ugc.models import ResponseError

result, error = single_admin_get_content(
    limit=limit,
    offset=offset,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

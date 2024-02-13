import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.ugc import admin_get_user_content_by_share_code
from accelbyte_py_sdk.api.ugc.models import ModelsContentDownloadResponse
from accelbyte_py_sdk.api.ugc.models import ResponseError

result, error = admin_get_user_content_by_share_code(
    share_code=share_code,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

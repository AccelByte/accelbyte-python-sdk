import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.ugc import admin_get_content_by_content_idv2
from accelbyte_py_sdk.api.ugc.models import ModelsContentDownloadResponseV2
from accelbyte_py_sdk.api.ugc.models import ResponseError

result, error = admin_get_content_by_content_idv2(
    content_id=content_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

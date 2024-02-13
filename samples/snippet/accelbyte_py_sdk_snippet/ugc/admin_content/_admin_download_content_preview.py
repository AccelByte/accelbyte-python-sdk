import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.ugc import admin_download_content_preview
from accelbyte_py_sdk.api.ugc.models import ModelsGetContentPreviewResponse
from accelbyte_py_sdk.api.ugc.models import ResponseError

result, error = admin_download_content_preview(
    content_id=content_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

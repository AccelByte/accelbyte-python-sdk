import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.ugc import public_download_content_by_content_id
from accelbyte_py_sdk.api.ugc.models import ModelsContentDownloadResponse
from accelbyte_py_sdk.api.ugc.models import ResponseError

result, error = public_download_content_by_content_id(
    content_id=content_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

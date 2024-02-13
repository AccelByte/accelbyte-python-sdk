import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.ugc import add_download_count
from accelbyte_py_sdk.api.ugc.models import ModelsAddDownloadCountResponse
from accelbyte_py_sdk.api.ugc.models import ResponseError

result, error = add_download_count(
    content_id=content_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.ugc import list_content_versions_v2
from accelbyte_py_sdk.api.ugc.models import ModelsListContentVersionsResponse
from accelbyte_py_sdk.api.ugc.models import ResponseError

result, error = list_content_versions_v2(
    content_id=content_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

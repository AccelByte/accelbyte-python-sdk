import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.ugc import admin_get_staging_content_by_id
from accelbyte_py_sdk.api.ugc.models import ModelsStagingContentResponse
from accelbyte_py_sdk.api.ugc.models import ResponseError

result, error = admin_get_staging_content_by_id(
    content_id=content_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

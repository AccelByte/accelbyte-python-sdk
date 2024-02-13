import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.ugc import delete_user_staging_content_by_id
from accelbyte_py_sdk.api.ugc.models import ResponseError

result, error = delete_user_staging_content_by_id(
    content_id=content_id,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

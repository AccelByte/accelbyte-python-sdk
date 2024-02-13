import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.ugc import admin_delete_tag
from accelbyte_py_sdk.api.ugc.models import ResponseError

result, error = admin_delete_tag(
    tag_id=tag_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

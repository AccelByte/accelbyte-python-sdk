import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.ugc import single_admin_get_group
from accelbyte_py_sdk.api.ugc.models import ModelsCreateGroupResponse
from accelbyte_py_sdk.api.ugc.models import ResponseError

result, error = single_admin_get_group(
    group_id=group_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

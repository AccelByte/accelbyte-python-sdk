import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import public_web_link_platform_establish

result, error = public_web_link_platform_establish(
    platform_id=platform_id,
    state=state,
    code=code,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

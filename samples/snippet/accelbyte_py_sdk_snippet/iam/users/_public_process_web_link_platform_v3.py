import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import public_process_web_link_platform_v3
from accelbyte_py_sdk.api.iam.models import ModelLinkRequest
from accelbyte_py_sdk.api.iam.models import RestErrorResponse

result, error = public_process_web_link_platform_v3(
    state=state,
    platform_id=platform_id,
    code=code,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

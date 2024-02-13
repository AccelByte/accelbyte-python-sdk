import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import public_delete_platform_link_v2
from accelbyte_py_sdk.api.iam.models import RestErrorResponse

result, error = public_delete_platform_link_v2(
    platform_id=platform_id,
    user_id=user_id,
    platform_namespace=platform_namespace,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

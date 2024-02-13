import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import platform_unlink
from accelbyte_py_sdk.api.iam.models import RestErrorResponse

result, error = platform_unlink(
    platform_id=platform_id,
    user_id=user_id,
    platform_namespace=platform_namespace,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

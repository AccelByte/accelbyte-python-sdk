import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import public_platform_unlink_all_v3
from accelbyte_py_sdk.api.iam.models import RestErrorResponse

result, error = public_platform_unlink_all_v3(
    platform_id=platform_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

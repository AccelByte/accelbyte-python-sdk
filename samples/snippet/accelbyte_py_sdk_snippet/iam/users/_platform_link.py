import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import platform_link
from accelbyte_py_sdk.api.iam.models import RestErrorResponse

result, error = platform_link(
    ticket=ticket,
    platform_id=platform_id,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

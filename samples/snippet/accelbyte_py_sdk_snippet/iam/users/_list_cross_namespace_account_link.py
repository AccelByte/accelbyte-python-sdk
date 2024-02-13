import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import list_cross_namespace_account_link
from accelbyte_py_sdk.api.iam.models import RestErrorResponse

result, error = list_cross_namespace_account_link(
    linking_token=linking_token,
    user_id=user_id,
    platform_id=platform_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import admin_get_user_mapping
from accelbyte_py_sdk.api.iam.models import ModelGetUserMappingV3
from accelbyte_py_sdk.api.iam.models import RestErrorResponse

result, error = admin_get_user_mapping(
    target_namespace=target_namespace,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import delete_sso_login_platform_credential_v3
from accelbyte_py_sdk.api.iam.models import RestErrorResponse

result, error = delete_sso_login_platform_credential_v3(
    platform_id=platform_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import retrieve_sso_login_platform_credential
from accelbyte_py_sdk.api.iam.models import ModelSSOPlatformCredentialResponse
from accelbyte_py_sdk.api.iam.models import RestErrorResponse

result, error = retrieve_sso_login_platform_credential(
    platform_id=platform_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

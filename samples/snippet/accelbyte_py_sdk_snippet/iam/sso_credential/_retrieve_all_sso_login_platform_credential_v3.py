import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import retrieve_all_sso_login_platform_credential_v3
from accelbyte_py_sdk.api.iam.models import ModelSSOPlatformCredentialResponse
from accelbyte_py_sdk.api.iam.models import RestErrorResponse

result, error = retrieve_all_sso_login_platform_credential_v3(
    limit=limit,
    offset=offset,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

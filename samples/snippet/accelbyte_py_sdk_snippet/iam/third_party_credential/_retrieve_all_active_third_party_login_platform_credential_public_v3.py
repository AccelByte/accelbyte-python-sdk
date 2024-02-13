import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import (
    retrieve_all_active_third_party_login_platform_credential_public_v3,
)
from accelbyte_py_sdk.api.iam.models import ModelPublicThirdPartyPlatformInfo
from accelbyte_py_sdk.api.iam.models import RestErrorResponse

result, error = retrieve_all_active_third_party_login_platform_credential_public_v3(
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

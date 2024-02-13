import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import platform_token_request_handler
from accelbyte_py_sdk.api.iam.models import OauthmodelErrorResponse
from accelbyte_py_sdk.api.iam.models import OauthmodelTokenResponse

result, error = platform_token_request_handler(
    platform_id=platform_id,
    device_id=device_id,
    mac_address=mac_address,
    platform_token=platform_token,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import platform_token_grant_v3
from accelbyte_py_sdk.api.iam.models import OauthmodelErrorResponse
from accelbyte_py_sdk.api.iam.models import OauthmodelTokenResponse

result, error = platform_token_grant_v3(
    platform_id=platform_id,
    additional_data=additional_data,
    client_id=client_id,
    create_headless=create_headless,
    device_id=device_id,
    mac_address=mac_address,
    platform_token=platform_token,
    skip_set_cookie=skip_set_cookie,
    x_additional_headers=x_additional_headers,
)

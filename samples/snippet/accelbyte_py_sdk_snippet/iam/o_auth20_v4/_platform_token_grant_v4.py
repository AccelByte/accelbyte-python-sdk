import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import platform_token_grant_v4
from accelbyte_py_sdk.api.iam.models import OauthmodelErrorResponse
from accelbyte_py_sdk.api.iam.models import OauthmodelLoginQueueTicketResponse
from accelbyte_py_sdk.api.iam.models import OauthmodelTokenResponseV3

result, error = platform_token_grant_v4(
    platform_id=platform_id,
    additional_data=additional_data,
    client_id=client_id,
    create_headless=create_headless,
    device_id=device_id,
    mac_address=mac_address,
    platform_token=platform_token,
    skip_set_cookie=skip_set_cookie,
    code_challenge=code_challenge,
    code_challenge_method=code_challenge_method,
    x_additional_headers=x_additional_headers,
)

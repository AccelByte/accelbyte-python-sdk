import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import platform_token_refresh_v3_deprecate
from accelbyte_py_sdk.api.iam.models import OauthmodelErrorResponse
from accelbyte_py_sdk.api.iam.models import OauthmodelPlatformTokenRefreshResponseV3

result, error = platform_token_refresh_v3_deprecate(
    platform_token=platform_token,
    platform_id=platform_id,
    x_additional_headers=x_additional_headers,
)

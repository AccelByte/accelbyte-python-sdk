import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import admin_retrieve_user_third_party_platform_token_v3
from accelbyte_py_sdk.api.iam.models import OauthmodelErrorResponse
from accelbyte_py_sdk.api.iam.models import OauthmodelTokenThirdPartyResponse

result, error = admin_retrieve_user_third_party_platform_token_v3(
    platform_id=platform_id,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

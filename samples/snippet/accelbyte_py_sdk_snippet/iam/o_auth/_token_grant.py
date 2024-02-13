import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import token_grant
from accelbyte_py_sdk.api.iam.models import OauthmodelErrorResponse
from accelbyte_py_sdk.api.iam.models import OauthmodelTokenResponse

result, error = token_grant(
    grant_type=grant_type,
    device_id=device_id,
    code=code,
    extend_exp=extend_exp,
    password=password,
    redirect_uri=redirect_uri,
    refresh_token=refresh_token,
    username=username,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

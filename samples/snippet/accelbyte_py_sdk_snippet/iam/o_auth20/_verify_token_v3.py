import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import verify_token_v3
from accelbyte_py_sdk.api.iam.models import OauthmodelTokenResponseV3

result, error = verify_token_v3(
    token=token,
    x_additional_headers=x_additional_headers,
)

import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import request_target_token_response_v3
from accelbyte_py_sdk.api.iam.models import OauthmodelTokenResponseV3

result, error = request_target_token_response_v3(
    code=code,
    additional_data=additional_data,
    x_additional_headers=x_additional_headers,
)

import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import request_token_by_one_time_link_code_response_v3
from accelbyte_py_sdk.api.iam.models import OauthmodelTokenResponseV3

result, error = request_token_by_one_time_link_code_response_v3(
    client_id=client_id,
    one_time_link_code=one_time_link_code,
    additional_data=additional_data,
    is_transient=is_transient,
    x_additional_headers=x_additional_headers,
)

import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import request_one_time_linking_code_v3
from accelbyte_py_sdk.api.iam.models import OauthmodelOneTimeLinkingCodeResponse

result, error = request_one_time_linking_code_v3(
    platform_id=platform_id,
    x_additional_headers=x_additional_headers,
)

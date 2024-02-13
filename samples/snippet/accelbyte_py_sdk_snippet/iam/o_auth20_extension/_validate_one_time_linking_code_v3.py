import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import validate_one_time_linking_code_v3
from accelbyte_py_sdk.api.iam.models import (
    OauthmodelOneTimeLinkingCodeValidationResponse,
)

result, error = validate_one_time_linking_code_v3(
    one_time_link_code=one_time_link_code,
    x_additional_headers=x_additional_headers,
)

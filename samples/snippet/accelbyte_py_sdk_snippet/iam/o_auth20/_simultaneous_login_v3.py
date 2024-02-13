import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import simultaneous_login_v3
from accelbyte_py_sdk.api.iam.models import OauthmodelTokenResponseV3
from accelbyte_py_sdk.api.iam.models import RestErrorResponse

result, error = simultaneous_login_v3(
    native_platform=native_platform,
    native_platform_ticket=native_platform_ticket,
    simultaneous_platform=simultaneous_platform,
    simultaneous_ticket=simultaneous_ticket,
    x_additional_headers=x_additional_headers,
)

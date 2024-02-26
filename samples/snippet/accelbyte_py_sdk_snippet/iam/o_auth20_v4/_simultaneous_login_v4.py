import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import simultaneous_login_v4
from accelbyte_py_sdk.api.iam.models import OauthmodelLoginQueueTicketResponse
from accelbyte_py_sdk.api.iam.models import OauthmodelTokenResponseV3
from accelbyte_py_sdk.api.iam.models import RestErrorResponse

result, error = simultaneous_login_v4(
    native_platform=native_platform,
    native_platform_ticket=native_platform_ticket,
    simultaneous_platform=simultaneous_platform,
    simultaneous_ticket=simultaneous_ticket,
    code_challenge=code_challenge,
    code_challenge_method=code_challenge_method,
    x_additional_headers=x_additional_headers,
)

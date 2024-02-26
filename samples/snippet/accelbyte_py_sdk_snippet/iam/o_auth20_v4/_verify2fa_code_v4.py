import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import verify2fa_code_v4
from accelbyte_py_sdk.api.iam.models import OauthmodelErrorResponse
from accelbyte_py_sdk.api.iam.models import OauthmodelLoginQueueTicketResponse
from accelbyte_py_sdk.api.iam.models import OauthmodelTokenResponseV3

result, error = verify2fa_code_v4(
    code=code,
    factor=factor,
    mfa_token=mfa_token,
    remember_device=remember_device,
    x_additional_headers=x_additional_headers,
)

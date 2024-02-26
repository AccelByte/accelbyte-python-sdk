import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import authentication_with_platform_link_v4
from accelbyte_py_sdk.api.iam.models import OauthmodelErrorResponse
from accelbyte_py_sdk.api.iam.models import OauthmodelLoginQueueTicketResponse
from accelbyte_py_sdk.api.iam.models import OauthmodelTokenResponseV3
from accelbyte_py_sdk.api.iam.models import RestErrorResponse

result, error = authentication_with_platform_link_v4(
    client_id=client_id,
    linking_token=linking_token,
    password=password,
    username=username,
    extend_exp=extend_exp,
    x_additional_headers=x_additional_headers,
)

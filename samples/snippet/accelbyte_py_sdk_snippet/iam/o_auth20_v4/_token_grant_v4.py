import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import token_grant_v4
from accelbyte_py_sdk.api.iam.models import OauthmodelErrorResponse
from accelbyte_py_sdk.api.iam.models import OauthmodelLoginQueueTicketResponse
from accelbyte_py_sdk.api.iam.models import OauthmodelTokenWithDeviceCookieResponseV3

result, error = token_grant_v4(
    grant_type=grant_type,
    auth_trust_id=auth_trust_id,
    device_id=device_id,
    additional_data=additional_data,
    client_id=client_id,
    code=code,
    code_verifier=code_verifier,
    extend_namespace=extend_namespace,
    extend_exp=extend_exp,
    login_queue_ticket=login_queue_ticket,
    password=password,
    redirect_uri=redirect_uri,
    refresh_token=refresh_token,
    username=username,
    code_challenge=code_challenge,
    code_challenge_method=code_challenge_method,
    x_additional_headers=x_additional_headers,
)

import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import generate_token_by_new_headless_account_v4
from accelbyte_py_sdk.api.iam.models import OauthmodelLoginQueueTicketResponse
from accelbyte_py_sdk.api.iam.models import OauthmodelTokenResponseV3
from accelbyte_py_sdk.api.iam.models import RestErrorResponse

result, error = generate_token_by_new_headless_account_v4(
    linking_token=linking_token,
    additional_data=additional_data,
    extend_exp=extend_exp,
    x_additional_headers=x_additional_headers,
)

import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import send_mfa_authentication_code
from accelbyte_py_sdk.api.iam.models import RestErrorResponse

result, error = send_mfa_authentication_code(
    client_id=client_id,
    factor=factor,
    mfa_token=mfa_token,
    x_additional_headers=x_additional_headers,
)

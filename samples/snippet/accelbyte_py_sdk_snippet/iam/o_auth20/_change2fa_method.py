import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import change2fa_method
from accelbyte_py_sdk.api.iam.models import RestErrorResponse

result, error = change2fa_method(
    factor=factor,
    mfa_token=mfa_token,
    x_additional_headers=x_additional_headers,
)

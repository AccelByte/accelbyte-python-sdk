import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import verify_token
from accelbyte_py_sdk.api.iam.models import OauthmodelTokenResponse

result, error = verify_token(
    token=token,
    x_additional_headers=x_additional_headers,
)

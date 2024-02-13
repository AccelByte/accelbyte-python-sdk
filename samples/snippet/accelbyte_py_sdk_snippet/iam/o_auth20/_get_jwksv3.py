import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import get_jwksv3
from accelbyte_py_sdk.api.iam.models import OauthcommonJWKSet

result, error = get_jwksv3(
    x_additional_headers=x_additional_headers,
)

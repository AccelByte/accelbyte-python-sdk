import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import token_introspection_v3
from accelbyte_py_sdk.api.iam.models import OauthmodelErrorResponse
from accelbyte_py_sdk.api.iam.models import OauthmodelTokenIntrospectResponse

result, error = token_introspection_v3(
    token=token,
    x_additional_headers=x_additional_headers,
)

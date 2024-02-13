import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import logout_sso_client
from accelbyte_py_sdk.api.iam.models import RestErrorResponse

result, error = logout_sso_client(
    platform_id=platform_id,
    x_additional_headers=x_additional_headers,
)

import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import public_web_link_platform
from accelbyte_py_sdk.api.iam.models import ModelWebLinkingResponse
from accelbyte_py_sdk.api.iam.models import RestErrorResponse

result, error = public_web_link_platform(
    platform_id=platform_id,
    client_id=client_id,
    redirect_uri=redirect_uri,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

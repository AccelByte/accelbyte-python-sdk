import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import public_get_async_status
from accelbyte_py_sdk.api.iam.models import ModelLinkRequest
from accelbyte_py_sdk.api.iam.models import RestErrorResponse

result, error = public_get_async_status(
    request_id=request_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.reporting import get
from accelbyte_py_sdk.api.reporting.models import RestapiConfigResponse
from accelbyte_py_sdk.api.reporting.models import RestapiErrorResponse

result, error = get(
    category=category,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

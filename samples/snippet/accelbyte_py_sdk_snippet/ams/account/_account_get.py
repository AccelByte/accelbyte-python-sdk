import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.ams import account_get
from accelbyte_py_sdk.api.ams.models import ApiAccountResponse
from accelbyte_py_sdk.api.ams.models import ResponseErrorResponse

result, error = account_get(
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import get_clients
from accelbyte_py_sdk.api.iam.models import ClientmodelClientResponse
from accelbyte_py_sdk.api.iam.models import RestErrorResponse

result, error = get_clients(
    x_additional_headers=x_additional_headers,
)

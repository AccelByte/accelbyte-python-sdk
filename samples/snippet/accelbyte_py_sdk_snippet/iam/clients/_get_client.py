import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import get_client
from accelbyte_py_sdk.api.iam.models import ClientmodelClientResponse
from accelbyte_py_sdk.api.iam.models import RestErrorResponse

result, error = get_client(
    client_id=client_id,
    x_additional_headers=x_additional_headers,
)

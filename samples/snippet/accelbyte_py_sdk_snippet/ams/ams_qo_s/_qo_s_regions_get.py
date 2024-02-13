import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.ams import qo_s_regions_get
from accelbyte_py_sdk.api.ams.models import ApiQoSEndpointResponse
from accelbyte_py_sdk.api.ams.models import ResponseErrorResponse

result, error = qo_s_regions_get(
    status=status,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

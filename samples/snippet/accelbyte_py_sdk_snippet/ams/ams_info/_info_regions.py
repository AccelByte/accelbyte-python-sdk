import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.ams import info_regions
from accelbyte_py_sdk.api.ams.models import ApiAMSRegionsResponse
from accelbyte_py_sdk.api.ams.models import ResponseErrorResponse

result, error = info_regions(
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

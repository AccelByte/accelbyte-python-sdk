import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.ams import info_supported_instances
from accelbyte_py_sdk.api.ams.models import ApiAvailableInstanceTypesResponse
from accelbyte_py_sdk.api.ams.models import ResponseErrorResponse

result, error = info_supported_instances(
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.ams import image_list
from accelbyte_py_sdk.api.ams.models import ApiImageList
from accelbyte_py_sdk.api.ams.models import ResponseErrorResponse

result, error = image_list(
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

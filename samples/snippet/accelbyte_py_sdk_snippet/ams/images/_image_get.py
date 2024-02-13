import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.ams import image_get
from accelbyte_py_sdk.api.ams.models import ApiImageDetails
from accelbyte_py_sdk.api.ams.models import ResponseErrorResponse

result, error = image_get(
    image_id=image_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

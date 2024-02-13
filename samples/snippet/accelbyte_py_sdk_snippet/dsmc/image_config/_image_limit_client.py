import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.dsmc import image_limit_client
from accelbyte_py_sdk.api.dsmc.models import ModelsGetImageLimitResponse
from accelbyte_py_sdk.api.dsmc.models import ResponseError

result, error = image_limit_client(
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

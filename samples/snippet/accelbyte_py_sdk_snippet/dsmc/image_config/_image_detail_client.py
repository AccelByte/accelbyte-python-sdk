import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.dsmc import image_detail_client
from accelbyte_py_sdk.api.dsmc.models import ModelsGetImageDetailResponse
from accelbyte_py_sdk.api.dsmc.models import ResponseError

result, error = image_detail_client(
    version=version,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

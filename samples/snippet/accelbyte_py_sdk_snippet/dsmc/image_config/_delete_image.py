import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.dsmc import delete_image
from accelbyte_py_sdk.api.dsmc.models import ResponseError

result, error = delete_image(
    image_uri=image_uri,
    version=version,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

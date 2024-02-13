import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.dsmc import delete_image_patch
from accelbyte_py_sdk.api.dsmc.models import ResponseError

result, error = delete_image_patch(
    image_uri=image_uri,
    version=version,
    version_patch=version_patch,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

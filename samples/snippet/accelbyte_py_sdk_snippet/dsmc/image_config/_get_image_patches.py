import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.dsmc import get_image_patches
from accelbyte_py_sdk.api.dsmc.models import ModelsListImagePatchesResponse
from accelbyte_py_sdk.api.dsmc.models import ResponseError

result, error = get_image_patches(
    version=version,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

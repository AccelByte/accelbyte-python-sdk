import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.dsmc import get_image_patch_detail
from accelbyte_py_sdk.api.dsmc.models import ModelsGetImagePatchDetailResponse
from accelbyte_py_sdk.api.dsmc.models import ResponseError

result, error = get_image_patch_detail(
    version=version,
    version_patch=version_patch,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

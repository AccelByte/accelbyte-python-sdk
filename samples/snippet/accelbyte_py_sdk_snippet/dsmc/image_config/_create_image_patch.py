import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.dsmc import create_image_patch
from accelbyte_py_sdk.api.dsmc.models import ModelsCreateImagePatchRequest
from accelbyte_py_sdk.api.dsmc.models import ResponseError

"""
body:
Definition: ModelsCreateImagePatchRequest
artifact_path: str
core_dump_enabled: bool
docker_path: str
image: str
image_size: int
namespace: str
patch_version: str
persistent: bool
ulimit_file_size: int
uploader_flag: str
version: str

Example: '{"artifactPath": "CVhdmChLhTbYoWgP", "coreDumpEnabled": true, "dockerPath": "ihbTqGNeAUZwkQku", "image": "IisUmeZTKIOnheJ6", "imageSize": 64, "namespace": "FQWJ3Euovjc0nM9R", "patchVersion": "LJNMaxFKMhPLBLNc", "persistent": true, "ulimitFileSize": 93, "uploaderFlag": "Wb813qakB7wxAuc2", "version": "NiLlbBDy2OBozxRN"}'
"""

result, error = create_image_patch(
    body=body,
    x_additional_headers=x_additional_headers,
)

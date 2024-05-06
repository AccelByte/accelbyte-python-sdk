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

Example: '{"artifactPath": "XlMcCujn7gLaWVNf", "coreDumpEnabled": false, "dockerPath": "vEQO3fNNdt5h4Iyn", "image": "JyAlzjkPJDE5OFjP", "imageSize": 76, "namespace": "Ih8pyZVm0GlDC4v2", "patchVersion": "45DKkKh7PaGx9SU8", "persistent": true, "ulimitFileSize": 72, "uploaderFlag": "y54ozdUypxwUX47N", "version": "ZaJDJQnOCdSD3Wnz"}'
"""

result, error = create_image_patch(
    body=body,
    x_additional_headers=x_additional_headers,
)

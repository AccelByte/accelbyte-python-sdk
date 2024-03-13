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

Example: '{"artifactPath": "FfamCRND5sdVSaEs", "coreDumpEnabled": false, "dockerPath": "zE9jPwODzXSLjToP", "image": "BVNEkgrCoKMEyNeO", "imageSize": 1, "namespace": "m53C4aHp0IrYxorX", "patchVersion": "ah0Ek9NGxHcK6JTR", "persistent": false, "ulimitFileSize": 85, "uploaderFlag": "pCZrKGXxatk9kcN7", "version": "T3txOeYSA7LfrQM6"}'
"""

result, error = create_image_patch(
    body=body,
    x_additional_headers=x_additional_headers,
)

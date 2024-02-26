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

Example: '{"artifactPath": "m1PAPdC7zpCqnf1f", "coreDumpEnabled": false, "dockerPath": "78pErTaTbxCIJtef", "image": "HhOkdUuUJhD5ZZJP", "imageSize": 11, "namespace": "QsE9dw3Or3HSpyGv", "patchVersion": "2zyUsXfWYkx3XPu8", "persistent": true, "ulimitFileSize": 27, "uploaderFlag": "tz3NQJcJ0wdKKIFw", "version": "tvMr8t2oZCFqmoGx"}'
"""

result, error = create_image_patch(
    body=body,
    x_additional_headers=x_additional_headers,
)

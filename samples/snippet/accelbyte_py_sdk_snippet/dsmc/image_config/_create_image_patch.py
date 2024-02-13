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

Example: '{"artifactPath": "k9wbqD3JOtdQbjTl", "coreDumpEnabled": true, "dockerPath": "NudpP1qvnoewyfPC", "image": "od4mzzWV8HkZ8sec", "imageSize": 24, "namespace": "oVHxX5xZSbV2C3zj", "patchVersion": "RTqtccI384gBzhAt", "persistent": true, "ulimitFileSize": 85, "uploaderFlag": "RxeIHVqcYzoh3dt3", "version": "IMWCydD8xz3JEPiZ"}'
"""

result, error = create_image_patch(
    body=body,
    x_additional_headers=x_additional_headers,
)

import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.dsmc import create_image
from accelbyte_py_sdk.api.dsmc.models import ModelsCreateImageRequest
from accelbyte_py_sdk.api.dsmc.models import ResponseError

"""
body:
Definition: ModelsCreateImageRequest
artifact_path: str
core_dump_enabled: bool
docker_path: str
image: str
image_size: int
namespace: str
persistent: bool
ulimit_file_size: int
version: str

Example: '{"artifactPath": "r1NuQaYPmdEf8tBC", "coreDumpEnabled": true, "dockerPath": "F3MyJwWiYVjxrgoh", "image": "6S5D6drGIDBrtkS4", "imageSize": 40, "namespace": "PaSdI1vOw372sEQ9", "persistent": true, "ulimitFileSize": 34, "version": "Eyyj85FFh781BB6r"}'
"""

result, error = create_image(
    body=body,
    x_additional_headers=x_additional_headers,
)

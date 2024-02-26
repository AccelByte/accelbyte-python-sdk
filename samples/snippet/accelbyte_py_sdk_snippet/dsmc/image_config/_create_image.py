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

Example: '{"artifactPath": "lneg8u4WXM9cFM7u", "coreDumpEnabled": false, "dockerPath": "7j8dLZCeLNjHGiJF", "image": "2e5ienk1xYQ49Xcd", "imageSize": 84, "namespace": "7Gy7vWfP4F3BXy9d", "persistent": true, "ulimitFileSize": 57, "version": "XVWz7XVq9qKOLA4r"}'
"""

result, error = create_image(
    body=body,
    x_additional_headers=x_additional_headers,
)

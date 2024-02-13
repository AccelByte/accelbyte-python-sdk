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

Example: '{"artifactPath": "t4S4dHjnboNorvq5", "coreDumpEnabled": true, "dockerPath": "1UvnpnauRNYUu5PM", "image": "YutketPVjD2WEGuC", "imageSize": 41, "namespace": "JADG0t3SIC6Qq6ZN", "persistent": false, "ulimitFileSize": 43, "version": "HuK2QtHf99GDhUci"}'
"""

result, error = create_image(
    body=body,
    x_additional_headers=x_additional_headers,
)

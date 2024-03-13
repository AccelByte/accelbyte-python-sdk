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

Example: '{"artifactPath": "mwXTB4E9xvH8JzQw", "coreDumpEnabled": false, "dockerPath": "53WMwJAAwpjofwoz", "image": "Q1vn1aMR2zWC0Swo", "imageSize": 45, "namespace": "fivBINDlKGyJuLhY", "persistent": false, "ulimitFileSize": 31, "version": "SQTspiUIwHp8EP0r"}'
"""

result, error = create_image(
    body=body,
    x_additional_headers=x_additional_headers,
)

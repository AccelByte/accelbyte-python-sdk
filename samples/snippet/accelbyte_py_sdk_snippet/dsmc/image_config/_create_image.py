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

Example: '{"artifactPath": "1hviE8kwpgdqyVVG", "coreDumpEnabled": true, "dockerPath": "dxZIaN2RZtoSX19O", "image": "Sn2RZ9xkgExszFCt", "imageSize": 70, "namespace": "oYDs1W0tXUDGNMlj", "persistent": true, "ulimitFileSize": 13, "version": "6FSoSvXnUJXmqpDT"}'
"""

result, error = create_image(
    body=body,
    x_additional_headers=x_additional_headers,
)

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

Example: '{"artifactPath": "WND89Mn35WhsVzEu", "coreDumpEnabled": true, "dockerPath": "LBLpuwhpOiBG9jA8", "image": "dDUkwrtWVaTDLVdA", "imageSize": 38, "namespace": "RouWoXUBMYVpFLOq", "persistent": true, "ulimitFileSize": 5, "version": "N3nozi9mAxBL9xHv"}'
"""

result, error = create_image(
    body=body,
    x_additional_headers=x_additional_headers,
)

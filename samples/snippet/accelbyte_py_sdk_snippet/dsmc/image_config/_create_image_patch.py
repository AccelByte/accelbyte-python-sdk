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

Example: '{"artifactPath": "Yqx4qMSXObeN501J", "coreDumpEnabled": true, "dockerPath": "ubJ9k7ZBjD0K9S6x", "image": "n7wuod2ADPCg6EEk", "imageSize": 88, "namespace": "CwCOej6NVooOPnMj", "patchVersion": "4E8Ape2h2qhf5fcd", "persistent": false, "ulimitFileSize": 45, "uploaderFlag": "BTlraRVilnVyHPix", "version": "EcgGIYD3A4CAiLY0"}'
"""

result, error = create_image_patch(
    body=body,
    x_additional_headers=x_additional_headers,
)

import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.dsmc import update_image
from accelbyte_py_sdk.api.dsmc.models import ModelsImageRecordUpdate
from accelbyte_py_sdk.api.dsmc.models import ResponseError

"""
body:
Definition: ModelsImageRecordUpdate
artifact_path: str
core_dump_enabled: bool
image: str
image_replications_map: Dict[str, ModelsImageReplication]
namespace: str
patch_version: str
persistent: bool
version: str

Example: '{"artifactPath": "F7jlhchFPvaA5XhH", "coreDumpEnabled": false, "image": "Ql3Q7ik4PCMow7od", "imageReplicationsMap": {"0zfBz8ChZxZvPQUR": {"failure_code": "3mvdfXHqwxSzCDRm", "region": "VLsqnWw5CXiJEJzv", "status": "sTs2axxAVzyNHeM8", "uri": "Fz16Rdu5vKsBQuHw"}, "IbA4VQZstYtiRqou": {"failure_code": "w099VnkPgfsC8uTG", "region": "c17A19LzqGV4Vkbq", "status": "NKeKeY9M5fsMUIb4", "uri": "IKk0Rp3n1H8rinye"}, "78FE03Zdsqbnv1AG": {"failure_code": "DKvxVKZOgE9uBE2T", "region": "OYSd2jEdzGJ9coCT", "status": "iHxBpgPGavZMdVbX", "uri": "VqxGXKcS4P0vxa78"}}, "namespace": "0o3gfDhN9n98h02T", "patchVersion": "zWjTXbBGJepkDOZb", "persistent": true, "version": "gQETd1nH6PVzRAEv"}'
"""

result, error = update_image(
    body=body,
    x_additional_headers=x_additional_headers,
)

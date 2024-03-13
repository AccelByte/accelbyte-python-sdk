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

Example: '{"artifactPath": "q46eM9TdOHyBO9mD", "coreDumpEnabled": true, "image": "QT7dueAucIAaRJFH", "imageReplicationsMap": {"FSWbp61VmqWmEYdD": {"failure_code": "Gp6zk0o3J3hgjBt6", "region": "4AnL7b0eqy17iOUS", "status": "N2l5Xaq2V4H2IdNr", "uri": "0GXRjb6uEBdzu3dF"}, "oVybMzcm9nwEcbTu": {"failure_code": "001xASClG4wBkHdO", "region": "egtSMHzxIGZ9Km7W", "status": "mlcYeZxXnqzUNaJP", "uri": "yyFX9j1toAjOco4Q"}, "2LBoIxhvoCWV39lb": {"failure_code": "rYzvKEsHIipCkgHe", "region": "zPqgIFkHhXwzL6Jo", "status": "bCO7mrZ8I0ybcVt1", "uri": "9VAgJNe77LvNDmC5"}}, "namespace": "L7ZpyOQZZYEcaNrZ", "patchVersion": "g4vUcZy6NfOS6UY8", "persistent": true, "version": "k3SxLXMz5TcZc4J5"}'
"""

result, error = update_image(
    body=body,
    x_additional_headers=x_additional_headers,
)

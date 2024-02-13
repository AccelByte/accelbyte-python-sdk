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

Example: '{"artifactPath": "eHDtu3UtyLleIZeN", "coreDumpEnabled": false, "image": "Czjnidid2kBmpRdm", "imageReplicationsMap": {"QvmJLDjL48Sym9tm": {"failure_code": "AFCAhspFWCbX2LIX", "region": "TXxXvRubRo5dxQio", "status": "IvlTXeUm6MVmLRJV", "uri": "Oyhl6YPb2WdkOnGl"}, "OQCqHclK1aIqB6j3": {"failure_code": "fPcapweHUfA3rZWB", "region": "K0AbaJtKxwYANok7", "status": "ia9mN63gL0PkE9Jq", "uri": "cXMrX21XZVHRjjVo"}, "YNWlVo0auWXlntck": {"failure_code": "aTmoXXetgzTMxyvT", "region": "AcJX7vdoG4BjIR69", "status": "ay8K7XyFbhs7yqoD", "uri": "yDxrez7V2iLvfL2Z"}}, "namespace": "wbGNzP9kF3mKxS8b", "patchVersion": "j7CHcnV9AKEKiuuq", "persistent": false, "version": "lPUypuKIf25Xx8PF"}'
"""

result, error = update_image(
    body=body,
    x_additional_headers=x_additional_headers,
)

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

Example: '{"artifactPath": "x9mrZFjtTJruiv8O", "coreDumpEnabled": true, "image": "Ngwwix4W5MOfi9pc", "imageReplicationsMap": {"opiJjvt1jx1Mb53b": {"failure_code": "y9Etf8HCETgtF336", "region": "H6i2U0EAIaZSNGLk", "status": "LDFe7iwIRUIWeGay", "uri": "QN82naJvCBbPhDKJ"}, "ijiK09F5JE5xihFP": {"failure_code": "bc7RzmW7xOV2WF7y", "region": "BDuswyIpb3gzXCC3", "status": "4HusWb1Z8KC4oIfP", "uri": "mh9CcHAZxkNUYav5"}, "ilPsqwqFtVZnKohF": {"failure_code": "wxkMgAh7CGiLZJ3g", "region": "QTpXZQw8TdV2lN6G", "status": "eOaN9wVAP0Cjtm2L", "uri": "v142zQKUMNREN23b"}}, "namespace": "SiTubzf05WQA6A4K", "patchVersion": "WQoJ8zvHMI8w6u89", "persistent": false, "version": "mUOkOOwp5QWb9Z9B"}'
"""

result, error = update_image(
    body=body,
    x_additional_headers=x_additional_headers,
)

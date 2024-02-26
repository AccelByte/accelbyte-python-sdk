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

Example: '{"artifactPath": "YPerT79L8LWfIEG9", "coreDumpEnabled": true, "image": "ZY1tCjb57jj5kwWq", "imageReplicationsMap": {"KF6ukVfLAR3gWR98": {"failure_code": "PBDT7vZCyQOmH3xq", "region": "xGMm13WRqgkfSndw", "status": "4cxtvvLfamEoN2bC", "uri": "6nhhmZYJdDI3y6MH"}, "Tg1la0T8c1Q4K296": {"failure_code": "vtn9eNCR6dL7KTeF", "region": "zsP2duVRtGL8mwRU", "status": "A1pqMbWlaixOlUEp", "uri": "KymYsQUZxjaWBwTE"}, "GYMbDpIrUuekdATD": {"failure_code": "ciQPpm47kuZ3nNc3", "region": "r5YVqCd7jkutSNcq", "status": "PVMm5Vd98n6ysUN5", "uri": "uwpEeN3rF9birjsg"}}, "namespace": "vyIWVj7Pl8SB8xLb", "patchVersion": "LmrgCdDZkazAEavV", "persistent": false, "version": "Sx4UTb4NcbpiX28T"}'
"""

result, error = update_image(
    body=body,
    x_additional_headers=x_additional_headers,
)

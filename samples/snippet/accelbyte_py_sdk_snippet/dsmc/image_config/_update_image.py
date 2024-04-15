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

Example: '{"artifactPath": "Rak0tUFzu044VYUj", "coreDumpEnabled": false, "image": "aZwQdDYik0clb0IG", "imageReplicationsMap": {"orhusJv0BukrYEbx": {"failure_code": "J8h0sHsI74xlq8xU", "region": "nhVatiwmGUjYyUgE", "status": "lqBLy0KhEjAFFXY8", "uri": "gYJfzj3B11hCvWsH"}, "rVK2C6k0nJzge1jU": {"failure_code": "EPByrlUU4omEs5qv", "region": "P7NoPvFkLDpUYdQl", "status": "iUjtS2QcGFIIPFrN", "uri": "6olCsfFHaEG6HokK"}, "iSF3fYq7TjwHy72h": {"failure_code": "oWCB7rh3wBW7jpkk", "region": "5m5XYE6bM3VhWU3d", "status": "eR0VSEMjsK40SP5W", "uri": "c30ItjTlLLjW87eO"}}, "namespace": "N85QMqdtyN1qkxpw", "patchVersion": "jL6jdH12x0UKguEQ", "persistent": true, "version": "ESFxc8DSSWfp0fy2"}'
"""

result, error = update_image(
    body=body,
    x_additional_headers=x_additional_headers,
)

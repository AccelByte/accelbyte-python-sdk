import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.dslogmanager import batch_download_server_logs
from accelbyte_py_sdk.api.dslogmanager.models import ModelsBatchDownloadLogsRequest
from accelbyte_py_sdk.api.dslogmanager.models import ResponseError

"""
body:
Definition: ModelsBatchDownloadLogsRequest
downloads: List[ModelsDownloadLogsRequest]
Definition: List[ModelsDownloadLogsRequest]
    alloc_id: str
    namespace: str
    pod_name: str

Example: '{"Downloads": [{"alloc_id": "9wU2OkWIG7NDuNEN", "namespace": "vVYTSCrcLbRJ1fvn", "pod_name": "ZwOa4Ht0PaUp36Tf"}, {"alloc_id": "JZatDv1msLUyPW20", "namespace": "mG4VpRLVQJ6GC8CH", "pod_name": "O1CN6GlKY37HaIDQ"}, {"alloc_id": "i1nPcTyBj0VH3eWB", "namespace": "GnIYOqEJbcA6e8Wg", "pod_name": "TCEkhGYU0Dgx3XBg"}]}'
"""

result, error = batch_download_server_logs(
    body=body,
    x_additional_headers=x_additional_headers,
)

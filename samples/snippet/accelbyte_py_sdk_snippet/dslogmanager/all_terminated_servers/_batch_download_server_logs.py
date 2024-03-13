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

Example: '{"Downloads": [{"alloc_id": "oi3sBL3CkpREiDEy", "namespace": "lr3ycgKOssVZaC2k", "pod_name": "zJ6DS6Q5D2x0nsVD"}, {"alloc_id": "7m0Kv2WRdn5dDH9b", "namespace": "5IGMC8tf8i7bQqXZ", "pod_name": "MlRdLtBZpTSN28UI"}, {"alloc_id": "Tc9f794CUvfL2Gu4", "namespace": "8ofZJiblA97H2fCw", "pod_name": "JrrMUnuoNwaZ42Hi"}]}'
"""

result, error = batch_download_server_logs(
    body=body,
    x_additional_headers=x_additional_headers,
)

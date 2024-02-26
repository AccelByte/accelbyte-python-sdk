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

Example: '{"Downloads": [{"alloc_id": "CyZ3iRM71SQ7dgUZ", "namespace": "7KCVJbRvIVCRuRl2", "pod_name": "KFIZ8aXjuTSoL573"}, {"alloc_id": "DRIpaiEexmDy5qlr", "namespace": "P12C4r4hzh9KLxuh", "pod_name": "3g91gPfvAIOmgEYT"}, {"alloc_id": "HsqZZHAjtKXJX2jd", "namespace": "GwOEf1oSFpWLLqND", "pod_name": "ozJIO2Tstx87CyLM"}]}'
"""

result, error = batch_download_server_logs(
    body=body,
    x_additional_headers=x_additional_headers,
)

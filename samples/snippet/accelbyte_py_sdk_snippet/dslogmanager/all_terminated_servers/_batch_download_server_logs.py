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

Example: '{"Downloads": [{"alloc_id": "VcFjl71ow4AL7q7y", "namespace": "dkgTwBYkXqmBJVgI", "pod_name": "LttUUNngr9Gtna2m"}, {"alloc_id": "LJCDDmBLjOEOJ1N8", "namespace": "Fb8F1k2xNjCihFis", "pod_name": "yP1OjnrwURukUPai"}, {"alloc_id": "HbEX45x46b0yU9Gd", "namespace": "FrP8rSTi3mgRjNhq", "pod_name": "JzRfSRamR3yaqAt2"}]}'
"""

result, error = batch_download_server_logs(
    body=body,
    x_additional_headers=x_additional_headers,
)

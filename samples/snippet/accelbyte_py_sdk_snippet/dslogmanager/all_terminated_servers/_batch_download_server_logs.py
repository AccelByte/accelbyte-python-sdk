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

Example: '{"Downloads": [{"alloc_id": "ttAqjgN0qhNn3MfN", "namespace": "zowAwhmT5dC5peBa", "pod_name": "2VvrKOi2NI9UI1aP"}, {"alloc_id": "X0s92RjUBthx9ZU4", "namespace": "OHEvcW2akehPim83", "pod_name": "AZ3NNAcwFOFHIojj"}, {"alloc_id": "NEpcoXnkwJDf19dM", "namespace": "G7fNU6AfoN1UsCfO", "pod_name": "5garvTlyowmnJrK0"}]}'
"""

result, error = batch_download_server_logs(
    body=body,
    x_additional_headers=x_additional_headers,
)

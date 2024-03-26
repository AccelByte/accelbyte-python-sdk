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

Example: '{"Downloads": [{"alloc_id": "mv1E5iieJAYHfSwD", "namespace": "aak3ORtaUFyw44Ju", "pod_name": "nFgY9pZ9Vji8uUEw"}, {"alloc_id": "fbjSwVUTVNjwL649", "namespace": "4jz0GqEWfWsHDkTt", "pod_name": "vnBrZv6XYpNbrVst"}, {"alloc_id": "ahZwVOJStg1y6go3", "namespace": "76YqIcukJ0VEHd4d", "pod_name": "U6nEIJQT0K0q1afG"}]}'
"""

result, error = batch_download_server_logs(
    body=body,
    x_additional_headers=x_additional_headers,
)

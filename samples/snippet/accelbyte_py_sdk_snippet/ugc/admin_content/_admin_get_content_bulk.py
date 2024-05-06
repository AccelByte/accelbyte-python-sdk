import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.ugc import admin_get_content_bulk
from accelbyte_py_sdk.api.ugc.models import ModelsAdminGetContentBulkRequest
from accelbyte_py_sdk.api.ugc.models import ModelsContentDownloadResponse
from accelbyte_py_sdk.api.ugc.models import ResponseError

"""
body:
Definition: ModelsAdminGetContentBulkRequest
content_ids: List[str]

Example: '{"contentIds": ["A51lX4WKmsQRlvCl", "ABOmxbM84EXypyw5", "2ZsUYmC2QM85L3cd"]}'
"""

result, error = admin_get_content_bulk(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

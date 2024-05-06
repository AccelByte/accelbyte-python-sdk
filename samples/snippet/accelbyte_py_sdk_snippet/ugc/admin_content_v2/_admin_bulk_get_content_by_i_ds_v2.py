import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.ugc import admin_bulk_get_content_by_i_ds_v2
from accelbyte_py_sdk.api.ugc.models import ModelsAdminGetContentBulkRequest
from accelbyte_py_sdk.api.ugc.models import ModelsContentDownloadResponseV2
from accelbyte_py_sdk.api.ugc.models import ResponseError

"""
body:
Definition: ModelsAdminGetContentBulkRequest
content_ids: List[str]

Example: '{"contentIds": ["EM9zIz4fxskY0Whg", "iyG2Oaaj1bkjEMb7", "11eBvguUdzy9YQzU"]}'
"""

result, error = admin_bulk_get_content_by_i_ds_v2(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

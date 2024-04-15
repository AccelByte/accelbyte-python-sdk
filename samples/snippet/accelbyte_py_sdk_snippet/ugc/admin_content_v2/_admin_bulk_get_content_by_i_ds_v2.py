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

Example: '{"contentIds": ["50eI8xy6YJ0SCqHp", "LuuorKPOS1BESuqz", "5vZee6NfovoPaJLy"]}'
"""

result, error = admin_bulk_get_content_by_i_ds_v2(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

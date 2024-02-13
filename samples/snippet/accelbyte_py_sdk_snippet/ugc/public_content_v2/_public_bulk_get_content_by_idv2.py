import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.ugc import public_bulk_get_content_by_idv2
from accelbyte_py_sdk.api.ugc.models import ModelsContentDownloadResponseV2
from accelbyte_py_sdk.api.ugc.models import ModelsPublicGetContentBulkRequest
from accelbyte_py_sdk.api.ugc.models import ResponseError

"""
body:
Definition: ModelsPublicGetContentBulkRequest
content_ids: List[str]

Example: '{"contentIds": ["1WCrRM5Dhc71rVMj", "XqJsY1bsux777Lql", "3ZInqToa3mjwzWdW"]}'
"""

result, error = public_bulk_get_content_by_idv2(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.ugc import public_get_content_bulk
from accelbyte_py_sdk.api.ugc.models import ModelsContentDownloadResponse
from accelbyte_py_sdk.api.ugc.models import ModelsPublicGetContentBulkRequest
from accelbyte_py_sdk.api.ugc.models import ResponseError

"""
body:
Definition: ModelsPublicGetContentBulkRequest
content_ids: List[str]

Example: '{"contentIds": ["UPsUymOaq4xUsKov", "r9B0Ie9K9Que9RVO", "MDJwasTGiqDPvchS"]}'
"""

result, error = public_get_content_bulk(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

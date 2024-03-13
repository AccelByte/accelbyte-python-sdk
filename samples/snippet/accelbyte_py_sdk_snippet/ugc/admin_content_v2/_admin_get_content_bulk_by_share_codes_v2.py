import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.ugc import admin_get_content_bulk_by_share_codes_v2
from accelbyte_py_sdk.api.ugc.models import ModelsContentDownloadResponseV2
from accelbyte_py_sdk.api.ugc.models import ModelsGetContentBulkByShareCodesRequest
from accelbyte_py_sdk.api.ugc.models import ResponseError

"""
body:
Definition: ModelsGetContentBulkByShareCodesRequest
share_codes: List[str]

Example: '{"shareCodes": ["WuBqBqVTvkzrjq3d", "0sG2PE0s1hQQL0xM", "KssETDMTJ2lkwfSI"]}'
"""

result, error = admin_get_content_bulk_by_share_codes_v2(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.ugc import public_get_content_bulk_by_share_codes
from accelbyte_py_sdk.api.ugc.models import ModelsContentDownloadResponse
from accelbyte_py_sdk.api.ugc.models import ModelsGetContentBulkByShareCodesRequest
from accelbyte_py_sdk.api.ugc.models import ResponseError

"""
body:
Definition: ModelsGetContentBulkByShareCodesRequest
share_codes: List[str]

Example: '{"shareCodes": ["7BNJHe6yzbMUnnnf", "JMdSahvxGI8yBtrE", "4QaHeQuZ23nw9ASi"]}'
"""

result, error = public_get_content_bulk_by_share_codes(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

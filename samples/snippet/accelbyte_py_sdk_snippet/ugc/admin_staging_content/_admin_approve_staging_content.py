import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.ugc import admin_approve_staging_content
from accelbyte_py_sdk.api.ugc.models import ModelsApproveStagingContentRequest
from accelbyte_py_sdk.api.ugc.models import ModelsStagingContentResponse
from accelbyte_py_sdk.api.ugc.models import ResponseError

"""
body:
Definition: ModelsApproveStagingContentRequest
approved: bool
note: str

Example: '{"approved": true, "note": "IlEvnEJ1EE4ghKPr"}'
"""

result, error = admin_approve_staging_content(
    body=body,
    content_id=content_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

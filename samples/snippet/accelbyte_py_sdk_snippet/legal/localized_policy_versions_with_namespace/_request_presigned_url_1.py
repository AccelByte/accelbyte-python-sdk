import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.legal import request_presigned_url_1
from accelbyte_py_sdk.api.legal.models import ErrorEntity
from accelbyte_py_sdk.api.legal.models import (
    UploadLocalizedPolicyVersionAttachmentResponse,
)
from accelbyte_py_sdk.api.legal.models import UploadPolicyVersionAttachmentRequest

"""
body:
Definition: UploadPolicyVersionAttachmentRequest
content_md5: str
content_type: str

Example: '{"contentMD5": "Orq313Jhhm6YQl1l", "contentType": "KeCm7e7FpTo47tjM"}'
"""

result, error = request_presigned_url_1(
    localized_policy_version_id=localized_policy_version_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

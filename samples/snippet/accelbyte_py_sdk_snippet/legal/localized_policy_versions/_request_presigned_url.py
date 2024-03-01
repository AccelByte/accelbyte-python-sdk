import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.legal import request_presigned_url
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

Example: '{"contentMD5": "S8BJdnnBNjYJhpyW", "contentType": "99ExSzmc8k8x7D38"}'
"""

result, error = request_presigned_url(
    localized_policy_version_id=localized_policy_version_id,
    body=body,
    x_additional_headers=x_additional_headers,
)
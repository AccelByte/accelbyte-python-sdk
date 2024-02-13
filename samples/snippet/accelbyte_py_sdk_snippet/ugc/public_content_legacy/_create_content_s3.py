import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.ugc import create_content_s3
from accelbyte_py_sdk.api.ugc.models import ModelsCreateContentResponse
from accelbyte_py_sdk.api.ugc.models import ModelsPublicCreateContentRequestS3
from accelbyte_py_sdk.api.ugc.models import ResponseError

"""
body:
Definition: ModelsPublicCreateContentRequestS3
content_type: str
custom_attributes: Dict[str, Any]
file_extension: str
name: str
preview: str
preview_metadata: ModelsPreviewMetadata
Definition: ModelsPreviewMetadata
    preview_content_type: str
    preview_file_extension: str
sub_type: str
tags: List[str]
type_: str

Example: '{"contentType": "1QqK5ZPCAlFIPpTZ", "customAttributes": {"EvgTnAllC0qKJpL7": {}, "MlfVCH09UUArQZ06": {}, "GeqjDGpcMo4ixD1I": {}}, "fileExtension": "NS7FuTdShVgXp4gN", "name": "bkFZbxA1RHy2m6HV", "preview": "32OibW6EmOPnAkz3", "previewMetadata": {"previewContentType": "FL789wrB6VeTkKHP", "previewFileExtension": "ECRw2S26WlqtDJfn"}, "subType": "UPKI6IVmJE2d9zzP", "tags": ["tMKWdCYHNSJugry6", "J22jvqEj3Jm1s8ty", "4XV85yzlz21F156P"], "type": "ozHUpOCNVpGnjUB7"}'
"""

result, error = create_content_s3(
    body=body,
    channel_id=channel_id,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

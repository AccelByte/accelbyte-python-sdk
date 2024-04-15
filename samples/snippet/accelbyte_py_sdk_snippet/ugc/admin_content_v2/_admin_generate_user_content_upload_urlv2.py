import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.ugc import admin_generate_user_content_upload_urlv2
from accelbyte_py_sdk.api.ugc.models import ModelsGenerateContentUploadURLRequest
from accelbyte_py_sdk.api.ugc.models import ModelsGenerateContentUploadURLResponse
from accelbyte_py_sdk.api.ugc.models import ResponseError

"""
body:
Definition: ModelsGenerateContentUploadURLRequest
content_type: str
file_extension: str

Example: '{"contentType": "vvWyIT6RqEOfUtYZ", "fileExtension": "WZEZZMDG2M04sYVh"}'
"""

result, error = admin_generate_user_content_upload_urlv2(
    body=body,
    channel_id=channel_id,
    content_id=content_id,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

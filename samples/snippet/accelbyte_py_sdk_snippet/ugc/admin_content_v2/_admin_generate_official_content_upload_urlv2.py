import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.ugc import admin_generate_official_content_upload_urlv2
from accelbyte_py_sdk.api.ugc.models import ModelsGenerateContentUploadURLRequest
from accelbyte_py_sdk.api.ugc.models import ModelsGenerateContentUploadURLResponse
from accelbyte_py_sdk.api.ugc.models import ResponseError

"""
body:
Definition: ModelsGenerateContentUploadURLRequest
content_type: str
file_extension: str

Example: '{"contentType": "v9jNKxAjijBNg8Tk", "fileExtension": "dkv1Oc7Lx4to1SZr"}'
"""

result, error = admin_generate_official_content_upload_urlv2(
    body=body,
    channel_id=channel_id,
    content_id=content_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

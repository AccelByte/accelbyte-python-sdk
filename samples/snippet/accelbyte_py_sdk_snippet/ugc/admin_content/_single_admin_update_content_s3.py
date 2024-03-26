import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.ugc import single_admin_update_content_s3
from accelbyte_py_sdk.api.ugc.models import ModelsAdminUpdateContentRequest
from accelbyte_py_sdk.api.ugc.models import ModelsCreateContentResponse
from accelbyte_py_sdk.api.ugc.models import ResponseError

"""
body:
Definition: ModelsAdminUpdateContentRequest
content_type: str
custom_attributes: Dict[str, Any]
file_extension: str
name: str
payload: str
preview: str
preview_metadata: ModelsPreviewMetadata
Definition: ModelsPreviewMetadata
    preview_content_type: str
    preview_file_extension: str
share_code: str
sub_type: str
tags: List[str]
type_: str
update_content_file: bool

Example: '{"contentType": "kQwiSXDXvUEd2WEV", "customAttributes": {"JGTgtABMzOTcz9oo": {}, "GWJuLy4MSYJgEvC9": {}, "URci2HnK4Hvaqm8r": {}}, "fileExtension": "MJ4NBnptv6maCV2d", "name": "1cNRppKD8At3eIjg", "payload": "7BqHoRTq0Mgo8gYX", "preview": "p2GHPqwb4tKLBYdI", "previewMetadata": {"previewContentType": "gQy2MzD3vyy0PRi4", "previewFileExtension": "p4ceVZLslBYKxfEj"}, "shareCode": "CWmJvepFZScQmW4l", "subType": "XQCPy0nJzQUOBlcu", "tags": ["z75qnz5HXgyOYyYn", "Dbuppne0mjrU6zvv", "mTNckdDW7xvfOpcz"], "type": "PeGMCIzEJIHOgz81", "updateContentFile": false}'
"""

result, error = single_admin_update_content_s3(
    body=body,
    channel_id=channel_id,
    content_id=content_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

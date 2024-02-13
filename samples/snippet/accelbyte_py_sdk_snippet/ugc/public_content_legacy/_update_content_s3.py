import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.ugc import update_content_s3
from accelbyte_py_sdk.api.ugc.models import ModelsCreateContentResponse
from accelbyte_py_sdk.api.ugc.models import ModelsUpdateContentRequest
from accelbyte_py_sdk.api.ugc.models import ResponseError

"""
body:
Definition: ModelsUpdateContentRequest
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
sub_type: str
tags: List[str]
type_: str
update_content_file: bool

Example: '{"contentType": "pw9EkF4Gh0MD0c9U", "customAttributes": {"Z8me5YIOFiCZIIes": {}, "PZ21ZFcPud3nPhlQ": {}, "yaflOewwiXSQWvob": {}}, "fileExtension": "O2EHS7t1I1v3aCdr", "name": "rpyOckDsIUeoYiIF", "payload": "MucZRZzXvzeP0jCJ", "preview": "eJLbmlR8aAIOMnpG", "previewMetadata": {"previewContentType": "EYpc3ypcteuCbvYP", "previewFileExtension": "KddJ3ZsqIyMqmjbg"}, "subType": "MgUtZLtpr1Of3MKJ", "tags": ["Dy3f6hoPcCtT8BEY", "g0kXbBJIXFFWcHO3", "lhTTmkNyY2kpRQ9J"], "type": "KkCgB1E6qLFuoXXR", "updateContentFile": false}'
"""

result, error = update_content_s3(
    body=body,
    channel_id=channel_id,
    content_id=content_id,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

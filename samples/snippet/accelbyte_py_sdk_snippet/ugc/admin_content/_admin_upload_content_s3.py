import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.ugc import admin_upload_content_s3
from accelbyte_py_sdk.api.ugc.models import ModelsCreateContentRequestS3
from accelbyte_py_sdk.api.ugc.models import ModelsCreateContentResponse
from accelbyte_py_sdk.api.ugc.models import ResponseError

"""
body:
Definition: ModelsCreateContentRequestS3
content_type: str
custom_attributes: Dict[str, Any]
file_extension: str
name: str
preview: str
preview_metadata: ModelsPreviewMetadata
Definition: ModelsPreviewMetadata
    preview_content_type: str
    preview_file_extension: str
share_code: str
sub_type: str
tags: List[str]
type_: str

Example: '{"contentType": "SOCCIKeblDwQtBk2", "customAttributes": {"4mOiWIEjmd0DwV7h": {}, "4VqE2k9esYS99cNd": {}, "C3hCGfEyXwirGiib": {}}, "fileExtension": "9QjY5zBPV5ZyGgtf", "name": "wf89fFeLk8YEXw52", "preview": "wTt0z7Hn7qPL56T6", "previewMetadata": {"previewContentType": "xS5qO34zFAMD3uka", "previewFileExtension": "buY6alIN5NEd8hIw"}, "shareCode": "3dwRRJLyJntTwPXQ", "subType": "EXz0mu8jOtsApPHo", "tags": ["LwChcKOPI4YCOzi7", "5AeqHyFGlKCKDATa", "Az338n8dKXq1ercu"], "type": "Qmd07UZdZbvr4kme"}'
"""

result, error = admin_upload_content_s3(
    body=body,
    channel_id=channel_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

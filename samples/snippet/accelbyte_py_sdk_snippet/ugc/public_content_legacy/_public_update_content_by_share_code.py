import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.ugc import public_update_content_by_share_code
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

Example: '{"contentType": "DTARzo5b9FbZgiUZ", "customAttributes": {"XhlKPuUXe2svclt0": {}, "ZdRD2Fk39HbVqzY2": {}, "AphN7PB1rKomyh7g": {}}, "fileExtension": "7tdgfdb38pfb926J", "name": "AdR9cnvKBPAcYX7Q", "payload": "AjJPiUfQEWurBYsu", "preview": "dbI6Y7DGq7UVYcFd", "previewMetadata": {"previewContentType": "LLsLaz9ioLkrd8yB", "previewFileExtension": "oRJFH4oBjbHqqqLl"}, "subType": "IB4BOeYkxTD4yECY", "tags": ["8TcLwaizNXn8mKkC", "WxKmPKTU6F5Oaag7", "nkSRh71ThUDOT0Ar"], "type": "1TTmKapGQU1yIaIA", "updateContentFile": true}'
"""

result, error = public_update_content_by_share_code(
    body=body,
    channel_id=channel_id,
    share_code=share_code,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

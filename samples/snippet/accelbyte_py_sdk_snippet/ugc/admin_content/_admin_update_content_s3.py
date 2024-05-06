import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.ugc import admin_update_content_s3
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

Example: '{"contentType": "Tj6lGcgWcHtKsTn2", "customAttributes": {"m9veQ6YTlNQHAGRI": {}, "Kbv3KlU3bGcamLwM": {}, "CCbqTH1LT94cPMUe": {}}, "fileExtension": "wBo4XGg9Y4XRNMi1", "name": "1pjiVfmALS0voFmE", "payload": "Tk8zbaCDzu5TK5rp", "preview": "JNTwbTG4MhEqus9o", "previewMetadata": {"previewContentType": "sT6YUpblc4NGtx4l", "previewFileExtension": "HFcv2wJVLi6PQJn9"}, "shareCode": "yrDLcTvMGQ42nV3s", "subType": "5SSt94ZMRsBmOcd8", "tags": ["L5ryOiJEqHnviZ2X", "y4ur4aJ6B9Lyhsmf", "o5PEwuNAVOosixKY"], "type": "bHtaqPIAZluSisGs", "updateContentFile": true}'
"""

result, error = admin_update_content_s3(
    body=body,
    channel_id=channel_id,
    content_id=content_id,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.ugc import admin_upload_content_direct
from accelbyte_py_sdk.api.ugc.models import ModelsCreateContentRequest
from accelbyte_py_sdk.api.ugc.models import ModelsCreateContentResponse
from accelbyte_py_sdk.api.ugc.models import ResponseError

"""
body:
Definition: ModelsCreateContentRequest
custom_attributes: Dict[str, Any]
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

Example: '{"customAttributes": {"ch1WSQOcn73zhbRa": {}, "eebbCvegIhajFtXZ": {}, "AdlYFi9sCQxiL5bf": {}}, "name": "8jT31jW32dYNx88Q", "payload": "DxyUyIYSevgrIUR3", "preview": "WzU3PhHN4jx1Dgyj", "previewMetadata": {"previewContentType": "XwzlkSlcCy8hpMOW", "previewFileExtension": "02yRVJZiVu3MX6m0"}, "subType": "oS3RChcQmJLkhqTj", "tags": ["NcOw54gp0HwNnIMr", "3H60lhstJgPmwxgx", "3TIHmrCRlfrHuHH7"], "type": "LSWsB3JRF5A1K1CJ"}'
"""

result, error = admin_upload_content_direct(
    body=body,
    channel_id=channel_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

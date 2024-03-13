import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.ugc import admin_update_content_direct
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

Example: '{"customAttributes": {"LZcBvaJsXi7PlkJo": {}, "YdhXBz89sMA6NB2E": {}, "qOBIHHCaXNZw6T2b": {}}, "name": "q7YjeeOBtSyYX4f8", "payload": "xCDDlUjPdEwl6aJi", "preview": "YY2613drcfKqyXU3", "previewMetadata": {"previewContentType": "xAmKApnAAYhwfuZN", "previewFileExtension": "i5flrGxk5gHTpHv6"}, "subType": "1abHVRfvoVNbyf4i", "tags": ["Wvi8wGZZ2FvWUhhH", "clzVVgWIlUCivprV", "OZkjhTo0H8lLXkHZ"], "type": "naGTeWt1qYatVbxo"}'
"""

result, error = admin_update_content_direct(
    body=body,
    channel_id=channel_id,
    content_id=content_id,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

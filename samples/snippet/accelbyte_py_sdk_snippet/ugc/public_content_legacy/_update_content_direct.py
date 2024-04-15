import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.ugc import update_content_direct
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

Example: '{"customAttributes": {"LXr9Ydu51D8m5SMa": {}, "EEkNCA8ntijyEPgR": {}, "9LBxWXYUDBROh2Lp": {}}, "name": "qnJpDGPSelmbCWaC", "payload": "URxfuTBCITPzLoXq", "preview": "fxfHvIyqJu8a6gJn", "previewMetadata": {"previewContentType": "tRt5gPBLzzH12txV", "previewFileExtension": "Jpajw7P2GK3NtSf3"}, "subType": "0h7zTmMaENLkqp0b", "tags": ["Gdll35AqwJv41K6g", "Wvy3p6ur75IREO3Z", "fuk08FIuY45D2q5k"], "type": "FO5Y9ILiPCRLIhfi"}'
"""

result, error = update_content_direct(
    body=body,
    channel_id=channel_id,
    content_id=content_id,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

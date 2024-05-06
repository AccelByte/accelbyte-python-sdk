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

Example: '{"contentType": "rAt5bgvBoQzJ3CsM", "customAttributes": {"Gzxnou1BdY9XX7Ab": {}, "nPFH4T4frvIiau2j": {}, "PmN7b36GKql8IH1T": {}}, "fileExtension": "qC5qTgkmRu7jtPdB", "name": "AqICJZAKKWCxLf6x", "payload": "oapV4Sveux1p9MbV", "preview": "6725pcUdZT7mH9uU", "previewMetadata": {"previewContentType": "0jqxco5T55BToOeB", "previewFileExtension": "VwLqkzeg2scHE9f7"}, "subType": "xU2Q7vQ553cZLUYx", "tags": ["jqnSJq0sKLCO5eTH", "sokswY8A72IRN200", "nvHQFWIgqAdebLRP"], "type": "UpeaQtlMoC7FWD8k", "updateContentFile": false}'
"""

result, error = public_update_content_by_share_code(
    body=body,
    channel_id=channel_id,
    share_code=share_code,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

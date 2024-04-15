import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.ugc import create_content_direct
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

Example: '{"customAttributes": {"eDRH8PKzmmx9IJyf": {}, "7K7iyS6H4fl9LqeJ": {}, "kOWuyg7kyWD0bfnq": {}}, "name": "45XQDAVfjmSksaI4", "payload": "y62E0A2w1KUENa6q", "preview": "2sp6YMRrdbeqqkFh", "previewMetadata": {"previewContentType": "7L5blPGqYG9jPDlJ", "previewFileExtension": "tCVIrR5jnsLvzcqg"}, "subType": "kTIczHYVDFO9WjSw", "tags": ["Ijkk1Ki4jp6Ibfwa", "Ds0exxBvBaURKv9G", "00PQ3rvLmMMtJ6EU"], "type": "I1AmA5MnJNNh6DRw"}'
"""

result, error = create_content_direct(
    body=body,
    channel_id=channel_id,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

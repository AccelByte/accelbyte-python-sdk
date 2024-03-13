import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.ugc import create_content_s3
from accelbyte_py_sdk.api.ugc.models import ModelsCreateContentResponse
from accelbyte_py_sdk.api.ugc.models import ModelsPublicCreateContentRequestS3
from accelbyte_py_sdk.api.ugc.models import ResponseError

"""
body:
Definition: ModelsPublicCreateContentRequestS3
content_type: str
custom_attributes: Dict[str, Any]
file_extension: str
name: str
preview: str
preview_metadata: ModelsPreviewMetadata
Definition: ModelsPreviewMetadata
    preview_content_type: str
    preview_file_extension: str
sub_type: str
tags: List[str]
type_: str

Example: '{"contentType": "ircRv61zvIocSsX9", "customAttributes": {"5K0jIbcxcbz8X9Ks": {}, "zUElbqKmOPDDu7p4": {}, "avH3ZvfP5EEE5sJJ": {}}, "fileExtension": "yBTMJJMWF8L62EMq", "name": "GHhcfLe9OFpZjOPM", "preview": "9hvl6bbixF5Qp2mB", "previewMetadata": {"previewContentType": "QqwL3vvP8LYwqlMo", "previewFileExtension": "iesKXvI7IYqiy7Nk"}, "subType": "OWf6HicPpaNdrG8i", "tags": ["H1W5nQk8YO980Ig5", "OqgxaoSiHDfUfO5U", "WsPfPFqL3B9oBnzk"], "type": "r7VwPFmu2jMnWGJy"}'
"""

result, error = create_content_s3(
    body=body,
    channel_id=channel_id,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

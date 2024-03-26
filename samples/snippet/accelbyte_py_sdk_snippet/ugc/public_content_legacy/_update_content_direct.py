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

Example: '{"customAttributes": {"A6iPpvDbztk4faPz": {}, "9J78moBZxxjIHJuw": {}, "yeVbUxaek46fOAVd": {}}, "name": "1FMnfdBeI0oqIAoT", "payload": "V4VD6lB96iyh7GLo", "preview": "Mz2Qnoh2o18JJPPF", "previewMetadata": {"previewContentType": "argynCnwvd49SwqO", "previewFileExtension": "KiaaPiRAujGv6NQq"}, "subType": "ehnekozKgaEkG6NK", "tags": ["uVgshd7dxPAjhw1V", "yTgW36NA6ZWMEbWq", "17JbSpOVl7TvuT9w"], "type": "qoQh45oIhlJecM2d"}'
"""

result, error = update_content_direct(
    body=body,
    channel_id=channel_id,
    content_id=content_id,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

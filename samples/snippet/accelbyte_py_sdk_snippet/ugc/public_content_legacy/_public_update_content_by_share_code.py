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

Example: '{"contentType": "5ztwdg81MqbP8m4c", "customAttributes": {"MdL6zOUoS7k9yzwb": {}, "bJ3og8Y2TMq4zVBs": {}, "X24NElErvS5I9fZb": {}}, "fileExtension": "wh2QSL0lr2m14jUd", "name": "EOB5yk3SvLWOz7ZV", "payload": "Wv3Zlc57MGlyDsuG", "preview": "6YKHZhNsf41Ugbwt", "previewMetadata": {"previewContentType": "QmQjnvJ2sPFyrF5F", "previewFileExtension": "Dv9p4Lm4FwIsnwe4"}, "subType": "yaJduvOd5iGVEHzG", "tags": ["ch1mGvUNi8M9l0rR", "iZRLqiMk6w0mACuK", "ols61pIW9X37p3OE"], "type": "cTbgkjBoV9SCN8ML", "updateContentFile": true}'
"""

result, error = public_update_content_by_share_code(
    body=body,
    channel_id=channel_id,
    share_code=share_code,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

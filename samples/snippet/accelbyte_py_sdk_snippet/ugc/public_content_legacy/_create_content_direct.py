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

Example: '{"customAttributes": {"WIzgQQ6R3fhzHQBp": {}, "3gytSzKmwmkz8VZ0": {}, "R5qCOYTY6kuzChrG": {}}, "name": "j4M3gY1CWKXRzuL5", "payload": "XpwPgmHgFXBsYa0X", "preview": "aJQjj3wRfHDrThkL", "previewMetadata": {"previewContentType": "avd5wAjMlfMrw7GJ", "previewFileExtension": "hBuCkiy7S5jqBcTa"}, "subType": "YxzKJBxXC5g7pte6", "tags": ["F5KvWGyLeigZ181O", "XXbud8RhujXwm1ki", "10oI1wWIUy28ZSD2"], "type": "12aLzyea1WZb20Ra"}'
"""

result, error = create_content_direct(
    body=body,
    channel_id=channel_id,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

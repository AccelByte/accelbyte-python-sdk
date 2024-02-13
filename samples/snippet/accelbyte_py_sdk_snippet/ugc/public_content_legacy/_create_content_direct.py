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

Example: '{"customAttributes": {"c9iX9PoKePjulox8": {}, "Xz4MN349aJBbbmpK": {}, "bVQWhOqrJCt8W9xG": {}}, "name": "3gUAhSftsYArmUhL", "payload": "RJ5jmlltf66GNuc3", "preview": "uRVIfROZdbTo7CjC", "previewMetadata": {"previewContentType": "NonX54nygcUg8Iwi", "previewFileExtension": "isoxNTXSnXXtomBV"}, "subType": "TO3OEWxHY7ABUK4k", "tags": ["1U2Xba3xNi1yG810", "XuBkZ4PTu4cgediC", "lD7bYYXT5oP6Cutb"], "type": "3fMzRrwZByYpyONY"}'
"""

result, error = create_content_direct(
    body=body,
    channel_id=channel_id,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

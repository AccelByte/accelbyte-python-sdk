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

Example: '{"contentType": "GiF7W2uZD2cuBkmc", "customAttributes": {"EnqbKfZxeJoJVgBb": {}, "37P8dtYiebMOPUBk": {}, "WTyXrci7TVw3JT04": {}}, "fileExtension": "JC2uWCPku2xV55ch", "name": "sgHWIeecIqwRIj6r", "preview": "GLTqzlvUhBskHIRJ", "previewMetadata": {"previewContentType": "ycIW99vOFFFj9Bjs", "previewFileExtension": "DNDbNfeoyq6DRV4u"}, "subType": "WLjHRpoF76b7yWrz", "tags": ["Ougpxk46anI4Ihw8", "fxO6M1NNQVzflzkx", "bFY2mHcTxJUcUByX"], "type": "c5cZlZFrpkqoQdkm"}'
"""

result, error = create_content_s3(
    body=body,
    channel_id=channel_id,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

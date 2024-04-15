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

Example: '{"contentType": "tvrCfvhLoNUv2EM7", "customAttributes": {"anBrrYUk4VpvobUK": {}, "rf2eNyM9WhfeILcm": {}, "02Oenyvg4ViG6PWm": {}}, "fileExtension": "RbjGNmp3OqAhhlGr", "name": "ACl7SGagSgTB0qX8", "preview": "RZua78pmnjZ2BBso", "previewMetadata": {"previewContentType": "QIMeMKqK8UQ582LC", "previewFileExtension": "rnJb5EHQrMmoiua4"}, "subType": "4aLgxzauRTfq7xFU", "tags": ["AmYByOxlonjzMsK2", "mPgcPHrh0HSoGj4i", "geReql1T5oLbT01B"], "type": "T7YGn4RtFPxHQJPD"}'
"""

result, error = create_content_s3(
    body=body,
    channel_id=channel_id,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

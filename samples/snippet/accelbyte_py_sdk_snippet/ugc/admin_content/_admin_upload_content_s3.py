import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.ugc import admin_upload_content_s3
from accelbyte_py_sdk.api.ugc.models import ModelsCreateContentRequestS3
from accelbyte_py_sdk.api.ugc.models import ModelsCreateContentResponse
from accelbyte_py_sdk.api.ugc.models import ResponseError

"""
body:
Definition: ModelsCreateContentRequestS3
content_type: str
custom_attributes: Dict[str, Any]
file_extension: str
name: str
preview: str
preview_metadata: ModelsPreviewMetadata
Definition: ModelsPreviewMetadata
    preview_content_type: str
    preview_file_extension: str
share_code: str
sub_type: str
tags: List[str]
type_: str

Example: '{"contentType": "Qzy3MSJU5pGlUTtG", "customAttributes": {"WH4jFyim3lvL6JI8": {}, "WYqa8u6S0lRzL0Jt": {}, "22kih7GKxsi3hp3t": {}}, "fileExtension": "Gje544ufO0ldl7Ty", "name": "Imwdman9eP0pb8kB", "preview": "MPmkEPtU3FZBt9na", "previewMetadata": {"previewContentType": "ilOFjoarUFfCUyDM", "previewFileExtension": "Ctqms63hJeduNoqA"}, "shareCode": "7WNm7aQCQB9Icgox", "subType": "rmLuD4hyl8shLYdK", "tags": ["2sBuGaYk5eHlo20X", "ujCaa907bq03teBW", "lga2PNIM2Bukvf6X"], "type": "MVOsCSpqbKAtNKKG"}'
"""

result, error = admin_upload_content_s3(
    body=body,
    channel_id=channel_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

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

Example: '{"contentType": "q05e6hvb0Ut8aN2d", "customAttributes": {"9q4RHe9iOWiymA1R": {}, "E53KEBfR3ttMCLvw": {}, "DjLgOiwNeRlxInpH": {}}, "fileExtension": "tsyRljJuLcnOz7Ih", "name": "4sh7H5aqthshsztn", "preview": "WyXyiUaso2maxOWZ", "previewMetadata": {"previewContentType": "goVCjqKfhjxmpHt1", "previewFileExtension": "FPqETaqecRKnlZAC"}, "subType": "bnXJYuWkCKr1xAvD", "tags": ["iItS7XbFOKQDkvnt", "9TRVOw6KkdICLTgA", "9nsvbi1hIa9T66Sv"], "type": "ynudTuXwPuqCzbUC"}'
"""

result, error = create_content_s3(
    body=body,
    channel_id=channel_id,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

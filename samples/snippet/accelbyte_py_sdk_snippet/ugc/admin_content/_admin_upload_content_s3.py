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

Example: '{"contentType": "qdxATwNSfNoHey6D", "customAttributes": {"dn6yaxRDTyHhuJCM": {}, "s3WFKACWqtg2HAJk": {}, "V0iXgrhA9AejW9Pe": {}}, "fileExtension": "aepg3VjenZs1zhCV", "name": "l2kFIysswsVOq1PX", "preview": "SXh18tENbUqPZdTJ", "previewMetadata": {"previewContentType": "z0VzHpJZlz75tiQf", "previewFileExtension": "8G0gC2IQ4EdnN52n"}, "shareCode": "GkxZqmo1ZbFoQdYc", "subType": "nMBQ8En4uDwi5xwX", "tags": ["E0hQghQ0ZxA9INvK", "U6aNHsQiAVVzD7hZ", "nNiWQ3mXHE7ic7GG"], "type": "Rp6hDjM1Vd9TcO8Z"}'
"""

result, error = admin_upload_content_s3(
    body=body,
    channel_id=channel_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

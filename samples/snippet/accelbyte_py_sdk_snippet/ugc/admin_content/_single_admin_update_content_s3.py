import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.ugc import single_admin_update_content_s3
from accelbyte_py_sdk.api.ugc.models import ModelsAdminUpdateContentRequest
from accelbyte_py_sdk.api.ugc.models import ModelsCreateContentResponse
from accelbyte_py_sdk.api.ugc.models import ResponseError

"""
body:
Definition: ModelsAdminUpdateContentRequest
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
share_code: str
sub_type: str
tags: List[str]
type_: str
update_content_file: bool

Example: '{"contentType": "6bnZugVAWhvgZ6VT", "customAttributes": {"uignCjwe2LkourAk": {}, "HEXZf5ApvIz32XCi": {}, "o0aE9JfloHzFMA2B": {}}, "fileExtension": "Q2dtGq1LbFapNtEd", "name": "jmJTlOlN2HD6Hrxu", "payload": "LC5p1m8Mv5jBcogD", "preview": "4iGrgaRaYJckHIFV", "previewMetadata": {"previewContentType": "7iNZHwigDiP8BM3r", "previewFileExtension": "3TuhnixWUBL9HhNL"}, "shareCode": "ewahRWxrqStCY4uA", "subType": "vgORpSWDaN1hUeUh", "tags": ["FmW5UzajjKOFU7lj", "e1qSkFjrHlnmcxZG", "BTLc4EhVsP3hmhlI"], "type": "TDbd6RtOTwDqKt9j", "updateContentFile": true}'
"""

result, error = single_admin_update_content_s3(
    body=body,
    channel_id=channel_id,
    content_id=content_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

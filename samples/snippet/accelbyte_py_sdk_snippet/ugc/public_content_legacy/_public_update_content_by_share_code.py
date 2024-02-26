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

Example: '{"contentType": "XYVBl38S4sGA4E0t", "customAttributes": {"gDDVL14yZUa7Xf7r": {}, "NPqbgvnsH0CMvmOF": {}, "aA8lAMnFGewl4js2": {}}, "fileExtension": "E8cyKheVAr0Paxgj", "name": "qle13ZZ9lVzkudaP", "payload": "2kfhvDFpgXkzD2Mm", "preview": "V6skyx6iBAMagdXA", "previewMetadata": {"previewContentType": "Ww7sT5hefsefnQl9", "previewFileExtension": "MyspwFsA9tGuheXb"}, "subType": "G0J99f45Pq9kM20G", "tags": ["B0NVD4fFbSI5gGEn", "13OZzKavtc3kIowA", "cOKTDxNiRuASaKJW"], "type": "GNdh9zETlBkk8soi", "updateContentFile": true}'
"""

result, error = public_update_content_by_share_code(
    body=body,
    channel_id=channel_id,
    share_code=share_code,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

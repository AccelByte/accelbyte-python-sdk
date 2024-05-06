import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.ugc import update_content_s3
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

Example: '{"contentType": "QPO5tosFo1DDdSd5", "customAttributes": {"iHmsir53dI5vttmq": {}, "O0MD6yilo12uBbTZ": {}, "JMrXAl1AL78GWbPJ": {}}, "fileExtension": "M0EqMbt25lAMzK9x", "name": "itcpkwX4nQz2xrGT", "payload": "BPvT2j2dDrQY8ndP", "preview": "Nydr4PM25luaNFxz", "previewMetadata": {"previewContentType": "kvkubpatVo9xtqxt", "previewFileExtension": "nVahbvaYnpdz1a57"}, "subType": "HzBTnmflutAg72js", "tags": ["B6NVBUjevCwkvhuT", "OHCkP93FzbxvYhjZ", "UnwBz3SAB817Ufmi"], "type": "wyU4kv13NrMFcmu3", "updateContentFile": false}'
"""

result, error = update_content_s3(
    body=body,
    channel_id=channel_id,
    content_id=content_id,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

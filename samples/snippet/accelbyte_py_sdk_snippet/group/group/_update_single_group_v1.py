import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.group import update_single_group_v1
from accelbyte_py_sdk.api.group.models import ModelsGroupResponseV1
from accelbyte_py_sdk.api.group.models import ModelsUpdateGroupRequestV1
from accelbyte_py_sdk.api.group.models import ResponseErrorResponse

"""
body:
Definition: ModelsUpdateGroupRequestV1
custom_attributes: ModelsUpdateGroupRequestV1CustomAttributes
Definition: ModelsUpdateGroupRequestV1CustomAttributes
group_description: str
group_icon: str
group_name: str
group_region: str
group_type: str

Example: '{"customAttributes": {}, "groupDescription": "qJBiTxR0Nr7SekRW", "groupIcon": "FisQA6iSsmHzfETL", "groupName": "vLY9fj3XJvvLCBOs", "groupRegion": "DfCmo8VUA1miO9Fb", "groupType": "PRIVATE"}'
"""

result, error = update_single_group_v1(
    body=body,
    group_id=group_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
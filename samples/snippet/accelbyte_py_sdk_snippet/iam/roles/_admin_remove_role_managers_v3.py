import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import admin_remove_role_managers_v3
from accelbyte_py_sdk.api.iam.models import ModelRoleManagersRequestV3
from accelbyte_py_sdk.api.iam.models import RestErrorResponse

"""
body:
Definition: ModelRoleManagersRequestV3
managers: List[AccountcommonRoleManagerV3]
Definition: List[AccountcommonRoleManagerV3]
    display_name: str
    namespace: str
    user_id: str

Example: '{"managers": [{"displayName": "42JeJFND0pTZ9Rtk", "namespace": "AGg2ZqAv8Gl7KRtm", "userId": "SELG45mXEpDYBwr0"}, {"displayName": "eqkQaDoJHQUKvIZh", "namespace": "RWjEc2WX32HsuXRF", "userId": "RnHCO3nBDgV45JoQ"}, {"displayName": "H4ODIfYrq7663sw3", "namespace": "NDiXivntpsZXfLHH", "userId": "3Mh59uqYGRF1P3LZ"}]}'
"""

result, error = admin_remove_role_managers_v3(
    body=body,
    role_id=role_id,
    x_additional_headers=x_additional_headers,
)

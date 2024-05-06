import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import add_role_managers
from accelbyte_py_sdk.api.iam.models import ModelRoleManagersRequest
from accelbyte_py_sdk.api.iam.models import RestErrorResponse

"""
body:
Definition: ModelRoleManagersRequest
managers: List[AccountcommonRoleManager]
Definition: List[AccountcommonRoleManager]
    display_name: str
    namespace: str
    user_id: str

Example: '{"Managers": [{"DisplayName": "No5BnoAEV69M2k3R", "Namespace": "T5oXIsvIznUGPY4j", "UserId": "QAXAVt9legLgAs8N"}, {"DisplayName": "05BFoiLSy36cg5aH", "Namespace": "HEgDHjJeqFSniuXi", "UserId": "wc4GaWG8uOfWXxbQ"}, {"DisplayName": "CTDVUPQM7pDkCMSz", "Namespace": "1DR17xMsaz4TtjF6", "UserId": "eK8x5E4BIlOxKxxb"}]}'
"""

result, error = add_role_managers(
    body=body,
    role_id=role_id,
    x_additional_headers=x_additional_headers,
)

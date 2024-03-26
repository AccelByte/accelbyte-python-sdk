import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import remove_role_managers
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

Example: '{"Managers": [{"DisplayName": "Sfkza3CkmFNUvlpb", "Namespace": "7voe0PWhKpdVfTr2", "UserId": "QDio6c7cFIrkpI6D"}, {"DisplayName": "FQevxCn6dDiJTSGS", "Namespace": "7UABm3J2NdYib3GG", "UserId": "TlYG3xucAiNzP57B"}, {"DisplayName": "fDTE47vUVljxdPRE", "Namespace": "UrxAuVV7I5GC7Abn", "UserId": "1iXl5LRLjAuFmLw0"}]}'
"""

result, error = remove_role_managers(
    body=body,
    role_id=role_id,
    x_additional_headers=x_additional_headers,
)

import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import update_third_party_login_platform_domain_v3
from accelbyte_py_sdk.api.iam.models import ModelPlatformDomainResponse
from accelbyte_py_sdk.api.iam.models import ModelPlatformDomainUpdateRequest
from accelbyte_py_sdk.api.iam.models import RestErrorResponse

"""
body:
Definition: ModelPlatformDomainUpdateRequest
affected_client_i_ds: List[str]
assigned_namespaces: List[str]
domain: str
role_id: str

Example: '{"affectedClientIDs": ["LBhfHi39Xz4cZpJ2", "FQGbQksxdwkfU3zn", "81krKljZxXONc6q7"], "assignedNamespaces": ["upJYP8qcBLT6PEF3", "VGYgpwZgJg4aMfsk", "pClYog0OgnToBPvY"], "domain": "TZzlleOfwBYGUtRl", "roleId": "isOOgaML32jR5YYS"}'
"""

result, error = update_third_party_login_platform_domain_v3(
    body=body,
    platform_id=platform_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

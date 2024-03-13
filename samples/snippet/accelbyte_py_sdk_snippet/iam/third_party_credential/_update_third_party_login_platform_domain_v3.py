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

Example: '{"affectedClientIDs": ["H86BkhDWzLDfoh94", "40gk88xnwM9yqf28", "q5SQYG10ayHHRyId"], "assignedNamespaces": ["F7OnzdUs6mrceWox", "gnV0Xe2YxjVc4MC7", "9RI6sC206gO6r4Sb"], "domain": "AFtAkjKM1Y0oGnc1", "roleId": "BfPI5bzzJli9TJ17"}'
"""

result, error = update_third_party_login_platform_domain_v3(
    body=body,
    platform_id=platform_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

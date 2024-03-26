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

Example: '{"affectedClientIDs": ["IuSjdFQBS9nHqYFd", "4DsSTUdcv8n4j02g", "XLbMF01SVzL5IA0I"], "assignedNamespaces": ["Q60averIhv3Uf4Wh", "4T2sZ7oAEBGtp4a9", "B23YBlSEtvcoHNPS"], "domain": "8G0OvkInHXhqF2Ck", "roleId": "EW5QDVa0Q9pdFgP3"}'
"""

result, error = update_third_party_login_platform_domain_v3(
    body=body,
    platform_id=platform_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import delete_third_party_login_platform_domain_v3
from accelbyte_py_sdk.api.iam.models import ModelPlatformDomainDeleteRequest
from accelbyte_py_sdk.api.iam.models import RestErrorResponse

"""
body:
Definition: ModelPlatformDomainDeleteRequest
domain: str

Example: '{"domain": "kY4miNNsxIY1LOVQ"}'
"""

result, error = delete_third_party_login_platform_domain_v3(
    body=body,
    platform_id=platform_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

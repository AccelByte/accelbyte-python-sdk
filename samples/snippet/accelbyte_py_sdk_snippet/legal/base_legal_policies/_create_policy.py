import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.legal import create_policy
from accelbyte_py_sdk.api.legal.models import CreateBasePolicyRequest
from accelbyte_py_sdk.api.legal.models import CreateBasePolicyResponse
from accelbyte_py_sdk.api.legal.models import ErrorEntity
from accelbyte_py_sdk.api.legal.models import ValidationErrorEntity

"""
body:
Definition: CreateBasePolicyRequest
affected_client_ids: List[str]
affected_countries: List[str]
base_policy_name: str
description: str
namespace: str
tags: List[str]
type_id: str

Example: '{"affectedClientIds": ["gGwcEelLw9cmTyO5", "9jQoV5ldtcfEGpua", "IFLtKFEKEtLg1YlB"], "affectedCountries": ["lTUaj2bBLMd7VRmU", "KCIiJm6sm55bacx5", "WM2iMWa3SLxK4FtH"], "basePolicyName": "fwVOl9OmZXGMrQ1P", "description": "3cdFjuUWS6FxDXS9", "namespace": "9PCSapqCQsU9o5Pd", "tags": ["uUN6tHcllfHHP2se", "hdrgujgp2iRMDU0e", "AqRS8JIPCBNNfUr8"], "typeId": "NDqaKX7AlmCYuPez"}'
"""

result, error = create_policy(
    body=body,
    x_additional_headers=x_additional_headers,
)

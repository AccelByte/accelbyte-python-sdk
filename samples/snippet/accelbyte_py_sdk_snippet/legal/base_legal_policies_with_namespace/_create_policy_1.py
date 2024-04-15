import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.legal import create_policy_1
from accelbyte_py_sdk.api.legal.models import CreateBasePolicyRequestV2
from accelbyte_py_sdk.api.legal.models import CreateBasePolicyResponse
from accelbyte_py_sdk.api.legal.models import ErrorEntity
from accelbyte_py_sdk.api.legal.models import ValidationErrorEntity

"""
body:
Definition: CreateBasePolicyRequestV2
affected_client_ids: List[str]
affected_countries: List[str]
base_policy_name: str
description: str
tags: List[str]
type_id: str

Example: '{"affectedClientIds": ["OfkuDT7qbZx005HQ", "BmPbsaToFVSQ96NT", "U6Mxjly9AyKuqJl9"], "affectedCountries": ["E0YkoNLFJn45ebLf", "mxnzMWyplbk8gW69", "Bwdre6G5vXVibi5P"], "basePolicyName": "Bs5Fgx6v0ixAtqLv", "description": "scitdn6vlMdPp4BJ", "tags": ["0nRzKqOLKL7PPZhe", "I0l1LhqYUsOAYiEw", "klv7zJpPOMqrIVhc"], "typeId": "XGlyHH6yPUzTipWn"}'
"""

result, error = create_policy_1(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

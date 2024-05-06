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

Example: '{"affectedClientIds": ["YpRfLaRd1PSULIUT", "tzb2sadYh3fTFp6z", "5PwMXAAmQuC3LFx4"], "affectedCountries": ["7OpDVXvrjQgFIt5N", "tETqQjbEFSo8EplS", "k3LVLrpqectsgKqW"], "basePolicyName": "yTExnIzty4i6ZZwF", "description": "f1oI3AcrudFEkbgB", "namespace": "xYWQG5POtpk8eVYJ", "tags": ["FX5xiBBiLqySvQZm", "ZC9cGfCp1o612xuf", "0fi1z3TX7L6pXe1W"], "typeId": "pA5u9W4Er1mRIDE2"}'
"""

result, error = create_policy(
    body=body,
    x_additional_headers=x_additional_headers,
)

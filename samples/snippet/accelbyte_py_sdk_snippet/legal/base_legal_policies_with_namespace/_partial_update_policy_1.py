import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.legal import partial_update_policy_1
from accelbyte_py_sdk.api.legal.models import ErrorEntity
from accelbyte_py_sdk.api.legal.models import UpdateBasePolicyRequestV2
from accelbyte_py_sdk.api.legal.models import UpdateBasePolicyResponse

"""
body:
Definition: UpdateBasePolicyRequestV2
affected_client_ids: List[str]
affected_countries: List[str]
base_policy_name: str
description: str
tags: List[str]

Example: '{"affectedClientIds": ["ALhquqNOHpyaY0jQ", "bffLR3tjshyOhbnQ", "TmoCS82raRBtPNLa"], "affectedCountries": ["vA3bID20ZZJ9TBfM", "pVtps8Iv0qZpZLHO", "OD0KYgAkESMbMXSF"], "basePolicyName": "5EEGuxiDiKyTDLaF", "description": "HAVZLDqLdcQ4Fgry", "tags": ["e5m5I8bWsSKuitc1", "zLnIGkNw6ihzNz8a", "9yiJ46LmD5Lqlp0p"]}'
"""

result, error = partial_update_policy_1(
    base_policy_id=base_policy_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

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

Example: '{"affectedClientIds": ["nNJjLVeC8yiGZ31d", "R2E804YGmBmSVjeB", "UgOifw5zHfaDeGzQ"], "affectedCountries": ["FkmR2BLi6hsDaIRB", "B3t9ikouG13AAJpe", "VGNi0ZDN6GWcqyZA"], "basePolicyName": "jd2Q75hiKhZXDLZz", "description": "zGVaNjMeDZasQIL9", "tags": ["QqA7hGpTMSwkVm1O", "ZbqPIiLAJUq1DkBg", "Gmj2xb07sl0HzYkx"]}'
"""

result, error = partial_update_policy_1(
    base_policy_id=base_policy_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

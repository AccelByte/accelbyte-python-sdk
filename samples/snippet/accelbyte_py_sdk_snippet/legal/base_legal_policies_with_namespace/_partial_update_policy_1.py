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

Example: '{"affectedClientIds": ["LhLcGsoYNRk72uoe", "hjI3dwRdBGtRWSoS", "8Lhtb4yBNVimIrCi"], "affectedCountries": ["vasj2ku4GCi0iyuB", "uc9EXgs1d4Wm25BQ", "Gougtm0rBZbEpsfG"], "basePolicyName": "3diSUWTSsPLUvoeP", "description": "mRaYvMMLftWWpQ1Q", "tags": ["rRJTkqAIGrlMvCN8", "9lwxsO7TZmBQJk5Y", "KgtiV1SCCGQ2T0h3"]}'
"""

result, error = partial_update_policy_1(
    base_policy_id=base_policy_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

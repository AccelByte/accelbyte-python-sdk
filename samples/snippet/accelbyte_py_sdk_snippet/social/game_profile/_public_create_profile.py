import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.social import public_create_profile
from accelbyte_py_sdk.api.social.models import ErrorEntity
from accelbyte_py_sdk.api.social.models import GameProfileRequest
from accelbyte_py_sdk.api.social.models import ValidationErrorEntity

"""
body:
Definition: GameProfileRequest
achievements: List[str]
attributes: Dict[str, str]
avatar_url: str
inventories: List[str]
label: str
profile_name: str
statistics: List[str]
tags: List[str]

Example: '{"achievements": ["tNkM8pztZpYNdRFL", "HiH8OMxU2OU7oGFx", "yDAFg1xpsDlzKJwS"], "attributes": {"4stwahhCwtkHHU9b": "lcJqX50t1zDzjXe7", "8J3hf9lZGtXOovNa": "SEZq7UbfNAmqAIkp", "03pjm4YpCPLN45Dn": "3cmCzmXjcKroTDZo"}, "avatarUrl": "4BaPnFtN56BCsD0J", "inventories": ["9kV1SiU7gunNUJez", "yq4YqdVtBD2dJmx4", "VIH1W1IfGeed1atc"], "label": "VZ4GjRLd05lv0nEF", "profileName": "WQklC2Qhev4VeQP5", "statistics": ["tBiTqmIiHTdH7vD0", "PvSO3LCgr75CcPc1", "iZt3DvjJvPULGKd3"], "tags": ["J1Kd0uQTImQFfEnP", "CEsM3nPYDfyNBtKD", "0ONQu6s0S5Ocu3X3"]}'
"""

result, error = public_create_profile(
    user_id=user_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

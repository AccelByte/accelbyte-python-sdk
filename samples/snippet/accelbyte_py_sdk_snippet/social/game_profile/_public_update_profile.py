import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.social import public_update_profile
from accelbyte_py_sdk.api.social.models import ErrorEntity
from accelbyte_py_sdk.api.social.models import GameProfileInfo
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

Example: '{"achievements": ["rFLO7L3tAx09wPRh", "PKyWiHSwZgYRF3qm", "cnDyw2e4VDDPtECB"], "attributes": {"iGCETy0tKcivJNMV": "zoWYvTSepawHn9OV", "FqVx5UOAbPs6XI7P": "1jW6AB7PiQF5pQKp", "zRut3TfScXy9ZYZE": "B3X45SvNMMlKRws2"}, "avatarUrl": "XKYpEmxZaBGUJwgY", "inventories": ["wTeU7UNtczpfGOE9", "0YWm14qdimOocVOi", "DxXN1juimNghaepc"], "label": "KgHgkhya8AyiheQG", "profileName": "6FdRuOVyJry6X42G", "statistics": ["0ygddUS04gVrlV2R", "N4tKoxdh0N8a7kyf", "tF1uCCLFc0QMQYkC"], "tags": ["ON1OM4vRcqNkzOEI", "rvuRW0EnnbxOybF3", "aTQTmGwCf85R1UXT"]}'
"""

result, error = public_update_profile(
    profile_id=profile_id,
    user_id=user_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

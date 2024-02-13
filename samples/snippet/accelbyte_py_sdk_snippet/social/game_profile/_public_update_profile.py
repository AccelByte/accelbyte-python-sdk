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

Example: '{"achievements": ["9gdvPYhv89oDWgne", "gFAdrk1cj7xbQKgQ", "WyYYq7bCg42kllSR"], "attributes": {"xCIavkQaCxfVampO": "SzTLhN5KDpbUxOQe", "J5VncmxUIjKuAQt2": "bnwaGjQnAMYUbBxc", "zCtLCjbHTS4x3OBS": "HnsunjDpGdIUpbYL"}, "avatarUrl": "h0wEO73BVgJYDZLM", "inventories": ["ky0z15ZjaMEsm4eG", "dGe4bTdFAluXYoa5", "1XtXo3hjMRZaIuGE"], "label": "TDxY7YD9m1P6LmHw", "profileName": "kqzBIKBMk8O2AkHG", "statistics": ["8aYO9IxKaOk2taoO", "4LIqC8ROUHzjbJmM", "ND0twRRkLiNPh22w"], "tags": ["wIaOgpxXLGDlMOeC", "JXh7i074zuMO2NIL", "1ik8jDcvzdn9J8pa"]}'
"""

result, error = public_update_profile(
    profile_id=profile_id,
    user_id=user_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

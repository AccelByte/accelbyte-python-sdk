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

Example: '{"achievements": ["69GP8mGuscpgJQDq", "wHNdiNWSPw2hPuEN", "1lUK51hqXWnm7bkn"], "attributes": {"Hjas63fjnojnOame": "MNQGF1ZqMr2UeFdI", "HkXVukBfqI09caEV": "MhesYXtMn6h2IIlE", "OOcOh5f8PWESsdn0": "cCj7oCT2oubMitOf"}, "avatarUrl": "mNefXSx2PzSIJI0m", "inventories": ["Et9cCeYefD6xA3eO", "zfQQxkn6XrVmQhVj", "qYKp4YeFVUhUybdB"], "label": "qYD68qmCR3HOSO70", "profileName": "7tUezXe3QF9A2GwY", "statistics": ["1BkUOm8CdbTRN4JV", "NxvmrpKgc7WkgyOI", "FAxDdExD07rHpy03"], "tags": ["ipf3eVk9h1YrNMPS", "LbSVJmMlw2FZjErK", "yyrMQ88ff2sosBEb"]}'
"""

result, error = public_create_profile(
    user_id=user_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

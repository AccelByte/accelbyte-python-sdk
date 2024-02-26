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

Example: '{"achievements": ["A47JUNLgnOJ1Kz0K", "5p5lObDQYVw4GV4o", "JV62zHPMzKooOncL"], "attributes": {"qQ0hTzm7CHRKxsV3": "PJhlzrI9lXIZr8oS", "XY9v1ZLOS26fTNHL": "ZPY7Zr50wVcZbFXF", "Y6avJGdtEQURPIfX": "OxqtURveEJeA1V3q"}, "avatarUrl": "Bs5F3f1TaltjbJ5q", "inventories": ["0YW0eyHt46Q7PZt3", "sWTwy49uqTdInPyp", "mQVIb6WFmO27nHil"], "label": "sTsAVPqSzILGHJNc", "profileName": "ekJVTDUSDQiRLFjL", "statistics": ["uls7VeeOhG6qF45S", "HaQsfN19GkrHSLM6", "McTCIgPXOnGNOMFd"], "tags": ["hIvi0c8BVi1cBgHU", "gdmWkwJlAaneywy9", "5NaDuf7S46pnRCHx"]}'
"""

result, error = public_create_profile(
    user_id=user_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

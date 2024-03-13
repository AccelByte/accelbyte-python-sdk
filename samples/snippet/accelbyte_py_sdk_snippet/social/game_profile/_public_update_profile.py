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

Example: '{"achievements": ["h7CJtizdD4Xp9Vw5", "sfxJuxVp86mWSsbp", "5KdBU5dQ1NkZRnxg"], "attributes": {"2ql5Dp1Jsqfk5Vem": "kzSkyn88R3mirx3h", "4rvCCtbgW5fwewbz": "mmqiQiVdeM9mgVGN", "zFL5gEFiEwrJnCml": "dzWftaKq0zJP5Bv9"}, "avatarUrl": "gEqJacrcRPCCd7u6", "inventories": ["DPPsKI4VbeC6QAhG", "orfZEZSA2mQ66sKf", "xyUrsiPc4OtGxd77"], "label": "mEovc8ycDdLWXOWh", "profileName": "FW5AUnVqjwX0TtV6", "statistics": ["OlolprRI46jkiI97", "T3Tto5zR3rPTKr5S", "mywzoTU3ecYNNwum"], "tags": ["ZQA3Oypbk3ihUGom", "D8Bx3WCKjLZ9fOFD", "rDZ2ffN2ryihd7Yy"]}'
"""

result, error = public_update_profile(
    profile_id=profile_id,
    user_id=user_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

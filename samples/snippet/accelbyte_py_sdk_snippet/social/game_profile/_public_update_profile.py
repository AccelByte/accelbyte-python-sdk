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

Example: '{"achievements": ["g3WLmB2UMJOhEUNP", "7hNcU3XRU8MMhtoF", "8t0itBWPE73iokFs"], "attributes": {"ZpG5XDUL5XlPUSZj": "lfITTJVUamRNYqM0", "i7HmfvAacyFM4NnC": "Z26d8Il0OxLEQEWh", "MAyD6NhklW9wo7Zd": "uDte02Vrd8YIAkA9"}, "avatarUrl": "Bo3KsOapYJGnQPnJ", "inventories": ["vxUouqfdhMxi3hPW", "wkPDSlgIdcYQcglE", "uWtEZn6J22k9AgDI"], "label": "1EtXwt5w4ooNw1bk", "profileName": "QT84KgMnAdj339Nt", "statistics": ["7Bz90Ayx3CZKmtcI", "3kteblNQ2OoixDya", "SetS5LlFi5RgR3vo"], "tags": ["BQmKuowcWeqF3SJ5", "QpDS7qAgFDV6Ujhe", "zuIbVvF30FuoOd7I"]}'
"""

result, error = public_update_profile(
    profile_id=profile_id,
    user_id=user_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

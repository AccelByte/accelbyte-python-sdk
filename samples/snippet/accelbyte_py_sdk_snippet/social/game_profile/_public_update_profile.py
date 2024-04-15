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

Example: '{"achievements": ["85wxEsP8KrXtOAka", "wJK6D5W5DlBFp5DG", "rYAfWOmWsp60MRgc"], "attributes": {"lal1bdkhK9KJlPYT": "sPHE2JLlyCN2v2oS", "xlwDpifi3lEQHwEM": "CmcNHiXbAjgbSIBP", "uIug3eyUMdQwcN9E": "rp6QsL39m4nuIyrG"}, "avatarUrl": "7QrWOgVmsatMalHI", "inventories": ["yHafafRuy6nplEt9", "QdvPeeIyRTbAVWIu", "ZSBNcXjSr2H7QnZ2"], "label": "mjuE6NMmueaT5T0H", "profileName": "TbrFJ5cnTfbfVJ8K", "statistics": ["okL5N6mdfm8qxOEb", "RdK2BYGqM0oxT0jX", "9TXdgUdYvyM5p4ue"], "tags": ["oU6HQcYuUW4rxbiL", "7IqVqrcBcTbPZzYB", "XcEipus2GaBePOUE"]}'
"""

result, error = public_update_profile(
    profile_id=profile_id,
    user_id=user_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

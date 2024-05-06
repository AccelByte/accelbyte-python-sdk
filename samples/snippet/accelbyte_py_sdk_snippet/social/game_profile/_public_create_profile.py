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

Example: '{"achievements": ["sk7pSWe3zfQw4FMk", "cHfMvSasAcxhddWm", "DBhKARNXj43Mt3Xe"], "attributes": {"F4as84VqHgODTmBi": "e3Y3YD6Qn8ZdGuAr", "44GposG6myb4g4B8": "Ut88g2ZKzVphaQOO", "eoF3zAmqqnC1meWo": "LQ586dTmxqlIpNKh"}, "avatarUrl": "DGnOmQJrmEp1TEuU", "inventories": ["t68esoasJHor8PPZ", "Dj7jA9GiiR96Dg0d", "jHxMdDkNJXOMLFQS"], "label": "0Ienm2rpmJaFKEdG", "profileName": "BbpENrN7NX6brkD2", "statistics": ["aMe4o8vP9DgxhlAC", "noELe855gT1eRk9l", "pzSgxS1NEsQXQRjv"], "tags": ["oEr4ZlMAjdZ8tPxQ", "3gB9qx1kB9m80bai", "nK0RvlT31qGJMmGl"]}'
"""

result, error = public_create_profile(
    user_id=user_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

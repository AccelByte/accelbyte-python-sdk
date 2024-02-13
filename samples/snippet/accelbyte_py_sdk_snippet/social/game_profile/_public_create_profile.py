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

Example: '{"achievements": ["7GlkyNByzmGqFjeO", "R4Ji1tjH8Fnu7bn1", "Iz2OW6N99Bnvg5Wz"], "attributes": {"AZa6F4fvBmH0w6SZ": "9ECSiYWza85MCTq0", "twHmeLudbiomaMsw": "ZZXEWxoRTWP2k1v0", "AuhKIR1AMyIV5yTw": "tmShZSEI7YY0J7R6"}, "avatarUrl": "MOjJh7nx93lIMkgh", "inventories": ["GRFddvG7w7pGY9kS", "qAWaeSO4adiDArqA", "viVEAPZ3W86gkN3q"], "label": "t8eNbIAdIq4SYOgk", "profileName": "4ygRMhKVg9YuCHL6", "statistics": ["fzm0jr0o95kmLFpa", "CtM0O8tkgYkoZ4Zd", "GGOiNafHsJwy72tI"], "tags": ["E3GGPyWT9g0ZVvNp", "lxpTlctxyt0St4MF", "MR32ykLKkYzJ5fDc"]}'
"""

result, error = public_create_profile(
    user_id=user_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

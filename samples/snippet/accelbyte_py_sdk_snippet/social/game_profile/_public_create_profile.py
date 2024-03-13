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

Example: '{"achievements": ["0iUrR1FaLUglk3An", "7XNWgX2OMPpDtbmE", "M34eRWO1qE4scnbN"], "attributes": {"QmrpzQrKFOwo74Lj": "9koRzDUmf2EA8hDx", "lP6hHJvLITicDJbl": "285lnJHXRR8wsTI6", "BnE2XWFYSIHVahuR": "mGStsrgdQuGe7mpV"}, "avatarUrl": "iFvF1RzQnaBRK7uo", "inventories": ["NzHKKCfOUVmRXl3d", "DSaKlZBtsAdHl0Dw", "mKqrUgkHowwFSscm"], "label": "P75Tfm2qN69Jpeko", "profileName": "IV8oulPm3iIxH4N0", "statistics": ["Lek2Up7KkJxXB1Hk", "YDMaHsIZXP25ajjt", "H50H7kpOLF9Q6s9q"], "tags": ["mwQWzxUeQBN4jcvx", "jOY7NVAdHw2xTERZ", "IM7zE9vQapa2mtKa"]}'
"""

result, error = public_create_profile(
    user_id=user_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)

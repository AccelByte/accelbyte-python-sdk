import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.session import public_party_kick
from accelbyte_py_sdk.api.session.models import ApimodelsKickResponse
from accelbyte_py_sdk.api.session.models import ResponseError

result, error = public_party_kick(
    party_id=party_id,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
